"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Axel Lehmann <lehmann@cs.uni-freiburg.de>.
"""


import unittest

from stringsearch import StringSearch


class StringSearchTest(unittest.TestCase):
    def test_find_matches_naive(self):
        ss = StringSearch()
        self.assertEqual(
            [0, 4, 12],
            ss.find_matches_naive("DUBIDUBIDUBADUBIDU", "DUBI"))
        self.assertEqual(27, ss.num_comparisons)
        self.assertEqual(
            [0, 2, 4],
            ss.find_matches_naive("DUDUDUDU", "DUDU"))
        self.assertEqual(14, ss.num_comparisons)
        self.assertEqual([], ss.find_matches_naive("", "DUDU"))
        self.assertEqual(0, ss.num_comparisons)
        self.assertEqual([], ss.find_matches_naive("DUDUDUDU", ""))
        self.assertEqual(0, ss.num_comparisons)

    def test_find_matches_kmp(self):
        ss = StringSearch()
        self.assertEqual(
            [0, 4, 12],
            ss.find_matches_kmp("DUBIDUBIDUBADUBIDU", "DUBI"))
        self.assertEqual(17, ss.num_comparisons)
        self.assertEqual(
            [0, 2, 4],
            ss.find_matches_kmp("DUDUDUDU", "DUDU"))
        self.assertEqual(8, ss.num_comparisons)
        self.assertEqual([], ss.find_matches_kmp("", "DUDU"))
        self.assertEqual(0, ss.num_comparisons)
        self.assertEqual([], ss.find_matches_kmp("DUDUDUDU", ""))
        self.assertEqual(0, ss.num_comparisons)

    def test_compute_shifts_kmp(self):
        ss = StringSearch()
        ss.compute_shifts_kmp("DUBIDUBADU")
        self.assertEqual([0, 0, 0, 0, 1, 2, 3, 0, 1, 2], ss.shifts)
        ss.compute_shifts_kmp("MIMMI")
        self.assertEqual([0, 0, 1, 1, 2], ss.shifts)
        ss.compute_shifts_kmp("ABCDEFG")
        self.assertEqual([0, 0, 0, 0, 0, 0, 0], ss.shifts)
        ss.compute_shifts_kmp("AAAAAA")
        self.assertEqual([0, 1, 2, 3, 4, 5], ss.shifts)
        ss.compute_shifts_kmp("")
        self.assertEqual([], ss.shifts)
