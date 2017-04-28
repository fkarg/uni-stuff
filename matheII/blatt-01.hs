

import Data.Monoid



-- type R = (String, String, String)
-- operation :: R -> R -> R
operation :: Num a => (a, a, a) -> (a, a, a) -> (a, a, a)
operation (r1, r2, r3) (s1, s2, s3) = (r1 * s1, (r1 * s2) + (r2 * s3) , r3 * s3)

o :: (Num a) => (a, a, a) -> (a, a, a) -> (a, a, a)
o = operation

inv :: Fractional a => (a, a, a) -> (a, a, a)
inv (a, b, c) = (1/a, -b/(a*c), 1/c)

operation' (r1, r2, r3) (s1, s2, s3) = (r1 <> s1, "(" <> r1 <> s2 <> "+" <> r2 <> s3 <> ")", r3 <> s3)

{-
(:*) :: R -> R -> R
r :* s = operation r s

infixr 9 *:
-}

