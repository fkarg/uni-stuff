"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Hannah Bast <bast@cs.uni-freiburg.de>
"""


def counting_sort(array):
    """
    Sort using the simple CountingSort algorithm from Vorlesung 2b.
    Assumes that elements are from the range 0 .. n - 1, where n is
    the size of the array.

    >>> counting_sort([5, 3, 1, 5, 2, 3, 0])
    [0, 1, 2, 3, 3, 5, 5]
    >>> counting_sort([5, 3, 6, 5, 2, 3, 0])
    [0, 2, 3, 3, 5, 5, 6]
    >>> counting_sort([])
    []
    """

    # Initialize the counts.
    counts = [0] * len(array)

    # Count how many elements of each possible value.
    for x in array:
        counts[x] += 1

    # Output elements according to counts.
    result = [0] * len(array)
    k = 0
    for x in range(0, len(counts)):
        for i in range(0, counts[x]):
            result[k] = x
            k += 1
    return result
