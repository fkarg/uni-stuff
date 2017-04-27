"""
Copyright 2017, University of Freiburg.
Chair of Algorithms and Data Structures.
Hannah Bast <bast@cs.uni-freiburg.de>
"""

def merge(array1, array2):
    """
    
    Merge two already sorted arrays.

    >>> merge([2, 4, 6, 8], [1, 3, 5, 7])
    [1, 2, 3, 4, 5, 6, 7, 8]
    >>> merge([1, 2, 3, 4], [])
    [1, 2, 3, 4]
    >>> merge([], [1, 2, 3, 4])
    [1, 2, 3, 4]
    >>> merge([], [])
    []

    """

    n1 = len(array1)
    n2 = len(array2)
    i1 = 0
    i2 = 0
    result = []
    while i1 < n1 or i2 < n2:
        if i1 < n1 and (i2 == n2 or array1[i1] <= array2[i2]):
            result.append(array1[i1])
            i1 += 1
        if i2 < n2 and (i1 == n1 or array2[i2] <= array1[i1]):
            result.append(array2[i2])
            i2 += 1
    return result
