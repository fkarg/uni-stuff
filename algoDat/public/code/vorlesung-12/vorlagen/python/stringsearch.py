"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Axel Lehmann <lehmann@cs.uni-freiburg.de>.
"""
import sys


class StringSearch:
    """
    Collection of string matching functions.
    """
    def __init__(self):
        # Number of comparisons needed.
        self.num_comparisons = 0
        # The shifts for KMP.
        self.shifts = []

    def find_matches_naive(self, text, pattern):
        """
        Find all matches of the given pattern in the given text using the
        naive algorithm.
        """
        self.num_comparisons = 0
        matches = []
        if len(pattern) == 0 or len(pattern) > len(text):
            return matches

        i = 0
        while i < len(text) - len(pattern) + 1:
            # Check if pattern matches at position i in text.
            j = 0
            while j < len(pattern):
                self.num_comparisons += 1
                if pattern[j] != text[i + j]:
                    break
                j += 1
            # If loop went to end, pattern matched at position i.
            if j == len(pattern):
                matches.append(i)
            i += 1
        return matches

    def find_matches_kmp(self, text, pattern):
        """
        Find all matches of the given pattern in the given text using KMP.
        """
        self.num_comparisons = 0
        matches = []
        self.compute_shifts_kmp(pattern)
        if len(pattern) == 0 or len(pattern) > len(text):
            return matches

        i = 0
        shift = 0
        while i < len(text) - len(pattern) + 1:
            # Check if pattern matches at position i in text.
            j = shift
            while j < len(pattern):
                self.num_comparisons += 1
                if pattern[j] != text[i + j]:
                    break
                j += 1
            # If loop went to end, pattern matched at position i.
            if j == len(pattern):
                matches.append(i)
            # Here is the only difference to the naive algorithm.
            shift = self.shifts[j - 1] if j > 0 else 0
            i = i + j - shift if j > 0 else i + 1
        return matches

    def compute_shifts_kmp(self, pattern):
        """
        Precompute shifts for KMP.
        """
        self.shifts = [0] * len(pattern)
        if len(pattern) < 1:
            return
        for j in range(1, len(pattern)):
            k = self.shifts[j - 1]
            if pattern[j] == pattern[k]:
                self.shifts[j] = k + 1
            elif pattern[j] == pattern[0]:
                self.shifts[j] = 1
            else:
                self.shifts[j] = 0


if __name__ == '__main__':
    if len(sys.argv) != 3:
        print("Usage: python3 stringsearch.py <text_file> <pattern>")
        sys.exit(1)
    ss = StringSearch()
    pattern = sys.argv[2]
    with open(sys.argv[1]) as f:
        for line in f:
            for i in ss.find_matches_kmp(line, pattern):
                print(line[i:i+len(pattern)])
