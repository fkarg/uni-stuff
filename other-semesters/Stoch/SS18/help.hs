

fac :: (Integral a) => a -> a
fac 0 = 1
fac 1 = 1
fac n = n * fac (n - 1)

ifac :: (Integral a, Num b) => a -> b
ifac = fromIntegral . fac


binom a b | b > a = binom b a
binom a b = fac a `div` (fac b * fac (a - b))
