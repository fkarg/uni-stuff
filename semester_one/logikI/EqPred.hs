{-# LANGUAGE FlexibleInstances #-}

module EqPred where

{- The code here is basically completely stolen from:
 - https://www.youtube.com/watch?v=F53aOAW9PBo -}

import Data.Maybe (isNothing)

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
