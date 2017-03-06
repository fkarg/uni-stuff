
import Debug.Trace (trace)


{-# SPECIALIZE an :: Integer -> Integer #-}
{-# SPECIALIZE an :: Int -> Int #-}
-- an :: Int -> Int
an n = actual [1..n] True
  where
  actual :: Show a => [a] -> Bool -> a
  actual [e] _ = e
  actual l b
    | even (length l) = actual res b
    | odd  (length l) = actual res (not b)
    where
    res = takeEverySnd l b


takeEverySnd :: [a] -> Bool -> [a]
takeEverySnd [a]   True  = [a]
takeEverySnd [a]   False = []
takeEverySnd (a:l) True  = a:takeEverySnd l False
takeEverySnd (a:l) False = takeEverySnd l True


{-# SPECIALIZE an' :: Integer -> Integer #-}
{-# SPECIALIZE an' :: Int -> Int #-}
an' :: Integral a => a -> a
an' n = 2 * (n `mod` 2 ^ (floor $ logBase 2 (fromIntegral n))) + 1

