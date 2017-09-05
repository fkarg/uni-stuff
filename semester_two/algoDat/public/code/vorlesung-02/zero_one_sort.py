"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Hannah Bast <bast@cs.uni-freiburg.de>
"""


def zero_one_sort(array):
    """
    Sort using the simple 0-1-Sort algorithm from Vorlesung 2b.
    [1, 5, 6, 2, 3, 7, 4]
    [1, 2, 6, 3, 4, 7, 5]

    >>> zero_one_sort([0, 1, 1, 0, 0, 1, 0])
    [0, 0, 0, 0, 1, 1, 1]
    >>> zero_one_sort([0, 0, 1, 0, 0, 1, 0])
    [0, 0, 0, 0, 0, 1, 1]
    >>> zero_one_sort([])
    []
    """

    # Count the number of zeroes and ones.
    num_ones = 0
    for x in array:
        num_ones += x
    num_zeroes = len(array) - num_ones

    result = []
    for i in range(0, len(array)):
        if i < num_zeroes:
            result.append(0)
        else:
            result.append(1)
    return result
