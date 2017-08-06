"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Hannah Bast <bast@cs.uni-freiburg.de>
"""

import sys

recursion_depth = 0
num_function_calls = 0


def edit_distance(x, y):
    """ Compute the edit distance between x and y.

    " >>> edit_distance("doof", "bloed")
    " 4
    """

    global recursion_depth
    global num_function_calls
    recursion_depth += 1
    num_function_calls += 1
    indent = "    " * recursion_depth
    print("%sBEGIN edit_distance(\"%s\", \"%s\")" % (indent, x, y))
    n = len(x)
    m = len(y)
    if n == 0:
        ed = m
    elif m == 0:
        ed = n
    else:
        ed1 = edit_distance(x, y[0:m-1]) + 1
        ed2 = edit_distance(x[0:n-1], y) + 1
        ed3 = edit_distance(x[0:n-1], y[0:m-1]) + (1 if x[-1] != y[-1] else 0)
        ed = min(ed1, ed2, ed3)
    print("%sEND   edit_distance(\"%s\", \"%s\")" % (indent, x, y))
    recursion_depth -= 1
    return ed

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 edit_distance.py <x> <y>")
    x = sys.argv[1]
    y = sys.argv[2]
    ed = edit_distance(x, y)
    print("Edit distance:", ed)
    print("Number of function calls: ", num_function_calls)
