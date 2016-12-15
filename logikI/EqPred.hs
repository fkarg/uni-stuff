{-# LANGUAGE FlexibleInstances #-}

module EqPred where

import Data.Maybe (isNothing)

{-
p1, p2, p3 :: [Bool] -> Bool
p1 xs = xs !! 3
p2 xs = xs !! 4
p3 xs = xs !! (2+1) && (xs !! 8 || not (xs !! 8))
-- -}

{-
> -- | Maybe slightly easier understandable version of epsilon.
> epsilon :: ([Bool] -> Bool) -> [Bool]
> epsilon p = if p (False : xs)
>     then False : xs
>     else True  : epsilon (p . (True:))
>     where xs = epsilon (p . (False:))
-}

-- Faster version of epsilon using lazyness:


-- | epsilon takes a predicate and returns an occupancy fulfilling it,
-- if there exists one. Otherwise it doesn't matter what epsilon returns.
--
epsilon :: ([Bool] -> Bool) -> [Bool]
epsilon p = h : epsilon (p . (h:) )
  where
  h = not $ p (False : epsilon (p . (False:) ) )


-- | checks if the predicate is fulfillable or not,
-- and returns one if there is one.
--
exists :: ([Bool] -> Bool) -> Maybe [Bool]
exists p = if p xs then Just xs else Nothing
  where xs = epsilon p


-- | checks if the predicate is true for all
-- occupancies
--
forall :: ([Bool] -> Bool) -> Bool
forall p = isNothing $ exists (not . p)


-- | two predicates are equal if they return the same
-- for all occupancies.
--
instance Eq ([Bool] -> Bool) where
  p == q = forall $ \xs -> p xs == q xs
