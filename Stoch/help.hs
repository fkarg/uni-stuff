

fac :: (Integral a) => a -> a
fac 0 = 1
fac 1 = 1
fac n = n * fac (n - 1)

ifac :: (Integral a, Num b) => a -> b
ifac = fromIntegral . fac


binom a b | b > a = binom b a
binom a b = fac a `div` (fac b * fac (a - b))

range = [0..999]
lr = length range
to = lr * lr

alle = [(x, y)| x <- range, y <- range]

-- getP :: (Foldable t1, Foldable t2, Fractional a) => t1 a1 -> t2 a2 -> a
getP :: Fractional c => [a] -> [b] -> c
getP m r = fromIntegral (length m) / (fromIntegral (length r))

a = [(x, y)| x <- range, y <- range, even x]
b = [(x, y)| x <- range, y <- range, even (x + y)]
c = [(x, y)| x <- range, y <- range, isprime y]
d = [(x, y)| x <- range, y <- range, isprime $ 10 * x + y]

ab = [(x, y) | (x, y) <- b, even x]
ac = [(x, y) | (x, y) <- c, even x]
ad = [(x, y) | (x, y) <- d, even x]

ba = [(x, y) | (x, y) <- a, even (x + y)]
bc = [(x, y) | (x, y) <- c, even (x + y)]
bd = [(x, y) | (x, y) <- d, even (x + y)]

ca = [(x, y) | (x, y) <- a, isprime y]
cb = [(x, y) | (x, y) <- b, isprime y]
cd = [(x, y) | (x, y) <- d, isprime y]

da = [(x, y) | (x, y) <- a, isprime $ 10 * x + y]
db = [(x, y) | (x, y) <- b, isprime $ 10 * x + y]
dc = [(x, y) | (x, y) <- c, isprime $ 10 * x + y]


primes4 :: [Integer]
primes4 = 2 : [ x | x <- [3,5..], isprime x]

isprime x = all (\p -> x `mod` p > 0) (factorsToTry x)
factorsToTry x = takeWhile (\p -> p*p <= x) primes4
