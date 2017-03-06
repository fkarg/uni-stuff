import Debug.Trace (trace)



fn :: Integral a => a -> [a] -> a
fn n li = sum $ zipWith (\a b -> (a+1)*n^b ) li [0..]



betan :: Show a => Integral a => a -> a -> a -> a
betan n m 0 = case m `mod` n of
                0 -> n - 1
                p -> p - 1
betan n m i = case m `mod` n^(i+1) of
                0 -> n - 1
                p -> trace ("\n" ++ show n ++ " " ++ show m ++ " " ++ show i ++ " " ++ show p ++ "\n") (betan n p 0)
--  where m' = m - sum [ n^j * (1 + betan n m j) | j <- [0..(i-1)] ]



alphan :: Show a => Integral a => a -> a -> [a]
alphan n m = actual m 0
  where 
  actual m _ | m <= 0 = []
  actual m i = c:actual (m-((c + 1)*n^(i))) (i+1)
    where c = betan n m i
--    where c = trace (show i ++ " " ++ show m ++ "\n") $ betan n m i




n = 2
f = fn n
beta = betan n
alpha = alphan n

