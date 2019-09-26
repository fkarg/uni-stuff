{-# LANGUAGE FlexibleContexts #-}

-- | n!
fac :: (Integral a) => a -> a
fac 0 = 1
fac 1 = 1
fac n = n * fac (n - 1)

ifac :: (Integral a, Num b) => a -> b
ifac = fromIntegral . fac

-- | Binomial of  a over b
binom :: (Integral a) => a -> a -> a
-- binom a b | b < 0 = 0
binom a b | b > a = binom b a
binom a b = fac a `div` (fac b * fac (a - b))

ib a b = fromIntegral $ binom a b


-- | Binomial distribution
-- | E = np
-- | Var = np(1-p)
binomial :: (Floating a, Integral b) => a -> b -> b -> a
binomial p n x | x < 0 = 0
binomial p n x | n - x < 0 = 0
binomial p n x = (ib n x) * (p ** fromIntegral x) * ((1 - p) ** (fromIntegral $ n - x))


-- | Poisson distribution
-- | E = l
-- | Var = l
poi :: (Floating a, Integral b) => a -> b -> a
poi l k = ((l ^ k) / (ifac k)) * exp (-l)


hyp :: (Integral a, Fractional b) => a -> a -> a -> a -> b
hyp aN aK n k = (ib aK k * ib (aN - aK) (n - k)) / (ib aN n)


-- | Geometric distribution
-- | E = 1/p
-- | Var = 1/p^2 - 1/p = (1-p)/p^2
geo :: (Floating a, Integral b) => a -> b -> a
geo p n = p * (1-p) ^ n


-- | Distributions and their mean as well as variance
--
-- | Bernoulli distribution
-- | B(p) -> only two cases, 1 or 0
-- | E = p
-- | Var = p(1-p)
--
-- | Binomial distribution
-- | B(n, p)(k) = (binom n x) * (p ** fromIntegral x) * ((1 - p) ** (fromIntegral $ n - x))
-- | E = np
-- | Var = np(1-p)
--
-- | Poisson distribution
-- | Poi(l)(k) = (l^k / fac k) * e ^ -l
-- | E = l
-- | Var = l
--
-- | Geometric distribution
-- | Geo(p)(n) = p * (1 - p)^n
-- | E = 1/p
-- | Var = 1/p^2 - 1/p = (1-p)/p^2
--
-- | Normal distribution
-- | N(u, s) = 
-- | E = u
-- | Var = s^2
--
-- | Uniform distribution
-- | U(a, b)(_x) = 1 / (b - a)
-- | E = (a + b) / 2
-- | Var = (b - a)^2 / 12
--
-- | Exponential distribution
-- | Exp(l)(x)






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

main = undefined
