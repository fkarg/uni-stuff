#!/usr/env python3

import sys
import math
from functools import reduce


class UniversalHashing:

    m = 16    # (int) size of hashtable
    u = 128   # (int) universe, all possible keys
    p = 131   # (int) prime p with p > u.

    def __init__(self, m=16, u=128, p=131):
        self.m = m
        self.u = u
        self.p = p

    # funnily enough: a python-float is a C-double.
    def collision_probability_class_1(self, x: int, y: int) -> float:
        """ Hashing-functions are of type a * z mod m here
        """
        def func(a, z):
            return a * z % self.m
        return len(list(filter(lambda e: e[0] == e[1],
                        [(func(a, x), func(a, y))
                        for a in range(self.u)]))) / self.m

    def collision_probability_class_2(self, x: int, y: int) -> float:
        """ Same as random throwing, thus the reciprocal of m.
        For further information refer to
        https://daphne.informatik.uni-freiburg.de/ss2017/AlgoDat/svn/public\
            /folien/vorlesung-05b.pdf
        """
        return 1.0 / self.m

    def collision_probability_class_3(self, x: int, y: int) -> float:
        """ Hashing functions are of type a * z + b mod p mod m here.
        """
        def func(a, b, z):
            return ((a * z + b) % self.p) % self.m
        return len(list(filter(lambda e: e[0] == e[1],
                        [(func(a, b, x), func(a, b, y))
                        for a in range(self.u)
                        for b in range(a, self.u)]))) * 2.0 / (self.u * self.u)

    def collision_probability_class_5(self, x: int, y: int) -> float:
        """ Hashing functions are of type a * z mod 2^k div 2^(k-l)
        with U = {0, ..., 2^k -1}, odd a and m = 2^l
        """
        k = math.ceil(math.log(self.u, 2))
        l = math.ceil(math.log(self.m, 2))

        def func(a, z):
            # bitshift-magic happening here (taking bits k-1 to k-l of a * z
            return a * z >> k - l | (1 << k - l + 1) - 1

        return len(list(filter(lambda e: e[0] == e[1],
                        [(func(a, x), func(a, y))
                        for a in range(1, self.u, 2)]))) / (0.5 * self.u)

    def collision_probabilities_histogram(self,
                                          probf: callable,
                                          num_buckets: int) -> list:
        buckets = [0] * num_buckets

        res = list(map(lambda e: 2 * e, [probf(x, y) for x in range(self.u)
                                         for y in range(x, self.u)
                                         if x != y]))

        for val in res:
            buckets[min(math.floor(val * num_buckets) - 1,
                        num_buckets - 1)] += 1

        return buckets


if __name__ == '__main__':
    if len(sys.argv) != 3:
        print('usage: ' + sys.argv[0] + ' <1-5> <num-buckets>')
        sys.exit(1)

    u = UniversalHashing()
    try:
        cls = getattr(u, 'collision_probability_class_' + sys.argv[1])
        buckets = u.collision_probabilities_histogram(cls, int(sys.argv[2]))
        print(reduce(lambda s, e: s + '\n' + str(e[1] + 1) + '\t' + str(e[0]),
                     zip(buckets, range(len(buckets))), ''))
    except AttributeError:
        print('Not implemented!')
