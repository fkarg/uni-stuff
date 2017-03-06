"""GCD calculator."""


def gcd(m, n):
    """Calculate the greatest common divisor of two numbers.

    Args:
      m (int): the first number
      n (int): the second number

    Returns:
      int: the greatest common divisor of m and n

    """
    a = m
    bs = [n]
    if isinstance(m, int) and isinstance(n, int):
        for e in bs:
            if e == 0:
                return a
            h = a % e
            a = e
            bs.append(h)


def reduce(function, iterable, initializer=None):
    """As of 2.7.12, this was still part of the built-in-functions.
    see https://docs.python.org/2/library/functions.html#reduce
    Reducing an iteratable with an left fold.
    Also: see 'mappend :: a -> a -> a' and 'mconcat [a] -> a'
    from Monoid. (Haskell)
    """
    it = iter(iterable)
    if initializer is None:
        try:
            initializer = next(it)
        except StopIteration:
            raise TypeError('reduce() of empty sequence with no initial value')
    accum_value = initializer
    for x in it:
        accum_value = function(accum_value, x)
    return accum_value


def cli_gcd():
    """Read numbers from standard input and print out their gcd."""
    print("Calculate GCD from the input natural numbers")

    inp = []
    while True:
        new = int(input("Input nat. number (or 0 to quit): "))
        if new == 0:
            break
        else:
            inp.append(new)
    print("GCD: " + str(reduce(gcd, inp)))


if __name__ == '__main__':
    cli_gcd()
