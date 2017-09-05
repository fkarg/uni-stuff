"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Hannah Bast <bast@cs.uni-freiburg.de>
"""


import random
import sys


def balls_into_bins(n, m):
    """
    Throw n balls into m bins (randomly) + count number of balls in each bin.

    >>> sum(balls_into_bins(100, 10))
    100
    """

    counts = [0] * m
    for i in range(0, n):
        r = random.randint(0, m - 1)  # Random int from 0 .. m - 1 (inclusive).
        counts[r] += 1
    return counts


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 balls_into_bins.py <#balls> <#bins>")
        sys.exit(1)
    n = int(sys.argv[1])
    m = int(sys.argv[2])

    counts = balls_into_bins(n, m)
    for i, count in enumerate(counts):
        print("%d\t%d" % (i + 1, count))
        sys.stdout.flush()
