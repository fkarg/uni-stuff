"""
Read text from given file and output the individual words.

Copyright 2017, University of Freiburg.
Chair of Algorithms and Data Structures.

Hannah Bast <bast@cs.uni-freiburg.de>
Axel Lehmann <lehmann@cs.uni-freiburg.de>

"""

import re
import sys


if __name__ == '__main__':
    # Parse command line arguments.
    if len(sys.argv) != 2:
        print("Usage: python ./words_main.py <file>")
        sys.exit(1)

    file_name = sys.argv[1]

    with open(file_name) as fh:
        for line in fh:
            for word in re.split('\W+', line):
                word = word.lower()
                if len(word):
                    print(word)
