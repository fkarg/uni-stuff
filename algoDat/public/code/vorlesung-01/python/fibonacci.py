"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Hannah Bast <bast@cs.uni-freiburg.de>
"""

import sys

recursion_depth = 0


def fibonacci_number(n):

    global recursion_depth
    recursion_depth += 1
    indent = "    " * recursion_depth
    print("%sBEGIN fibonacci(%d)" % (indent, n))

    if n <= 2:
        result = 1
    else:
        result = fibonacci_number(n - 1) + fibonacci_number(n - 2)

    print("%sEND   fibonacci(%d)" % (indent, n))
    recursion_depth -= 1

    return result


if __name__ == "__main__":
    if len(sys.argv) == 1:
        print("Usage: python3 fibonacci <n>")
        sys.exit(1)
    n = int(sys.argv[1])
    print(fibonacci_number(n))
