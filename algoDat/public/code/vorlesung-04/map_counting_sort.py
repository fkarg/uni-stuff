"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Hannah Bast <bast@cs.uni-freiburg.de>
"""


def map_counting_sort(array):
    """
    Sort array of n elements with m distinct using map counting sort, as
    explained in the lecture.

    >>> map_counting_sort([17, 17, 3, 3, 17, 3, 3, 3, 3, 12, 12, 3])
    [3, 3, 3, 3, 3, 3, 3, 12, 12, 17, 17, 17]
    """

    counts = map_counting_sort_step_1(array)
    key_value_pairs = map_counting_sort_step_2(counts)
    result = map_counting_sort_step_3(key_value_pairs)
    return result


def map_counting_sort_step_1(array):
    """
    Count how often each of the elements occurs.

    >>> map_counting_sort_step_1([17, 17, 3, 3, 17, 3, 3, 3, 3, 12, 12, 3])
    {17: 3, 3: 7, 12: 2}
    """

    counts = {}
    for x in array:
        if x not in counts:
            counts[x] = 0
        counts[x] += 1
    return counts


def map_counting_sort_step_2(counts):
    """
    Sort the given (key, count) pairs by key.

    >>> map_counting_sort_step_2({17: 3, 3: 7, 12: 2})
    [(3, 7), (12, 2), (17, 3)]
    """

    # Gets all (key, value) pairs in an array.
    key_value_pairs = list(counts.items())
    # Sort by key.
    key_value_pairs.sort()
    return key_value_pairs


def map_counting_sort_step_3(key_value_pairs):
    """
    Output the values according to their frequencies.

    >>> map_counting_sort_step_3([(3, 7), (12, 2), (17, 3)])
    [3, 3, 3, 3, 3, 3, 3, 12, 12, 17, 17, 17]
    """

    result = []
    for key, value in key_value_pairs:
        for i in range(0, value):
            result.append(key)
    return result
