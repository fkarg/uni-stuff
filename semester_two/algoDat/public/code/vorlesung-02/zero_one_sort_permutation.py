"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Hannah Bast <bast@cs.uni-freiburg.de>
"""


def zero_one_sort(array):
    """
    Sort using the simple 0-1-Sort algorithm from Vorlesung 2b.

    >>> zero_one_sort([0, 1, 1, 0, 0, 1, 0])
    [1, 5, 6, 2, 3, 7, 4]
    >>> zero_one_sort([0, 0, 1, 0, 0, 1, 0])
    [1, 2, 6, 3, 4, 7, 5]
    >>> zero_one_sort([])
    []
    """

    # Count the number of zeroes and ones.
    num_ones = 0
    for x in array:
        num_ones += x
    num_zeroes = len(array) - num_ones

    # Write num_zeroes times 0 followed by num_ones times 1.
    result = [0] * len(array)
    num_zeroes_seen = 0
    num_ones_seen = 0
    for i in range(0, len(array)):
        if array[i] == 0:
            num_zeroes_seen += 1
            result[i] = num_zeroes_seen
        else:
            num_ones_seen += 1
            result[i] = num_zeroes + num_ones_seen
    return result
