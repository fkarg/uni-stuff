"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Hannah Bast <bast@cs.uni-freiburg.de>
"""

import sys
import time


def min_sort(array):
    """

    Sort the given array using the MinSort algorithm from Vorlesung 1a.
    Returns the sorted array.

    >>> min_sort([8, 7, 6, 5, 4, 3, 2, 1])
    [1, 2, 3, 4, 5, 6, 7, 8]
    >>> min_sort([])
    []

    """

    n = len(array)
    for i in range(0, n - 1):
        # Find the minimum of array[i..n-1].
        min_value = array[i]
        min_index = i
        for j in range(i + 1, n):
            if array[j] < min_value:
                min_value = array[j]
                min_index = j
        # Swap min value to front (array[i]).
        array[i], array[min_index] = array[min_index], array[i]
    return array


if __name__ == "__main__":
    for n in range(1000, 10001, 1000):
        array = [k for k in range(n, 0, -1)]
        start_time = time.time()
        min_sort(array)
        end_time = time.time()
        duration_msecs = (end_time - start_time) * 1000
        print("%d\t%d" % (n, duration_msecs))
        sys.stdout.flush()
