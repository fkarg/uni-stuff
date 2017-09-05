#!/usr/bin/env python3
""" Created as part of the exercise sheet 4 in
    Info-II, University of Freiburg
    Author: Felix Karg <felix.karg@uranus.uni-freiburg.de>
"""

import re
import sys

from hash_map2 import HashMap


class WordCount:

    hash_map = HashMap()

    def __init__(self):
        """ Initializing the WordCount class
        """
        self.hash_map = HashMap(1000)
        pass

    def read_text_file(self, filepath: str):
        """ Reading the textfile from the given @filepath
        Args:
            filepath (str) : The path to the file to be read

        Updates the internal HashMap with the word frequencies
        Test:
            >>> wc = WordCount()
            >>> wc.read_text_file('WordCount.TIP')
            >>> wc.hash_map.lookup('to')
            7
            >>> wc.hash_map.lookup('freiburg')
            4
            >>> wc.hash_map.lookup('wordcount')
            6
            >>> len(wc.hash_map.get_key_value_pairs())
            120
        """
        with open(filepath) as fh:
            for line in fh:
                for word in re.split('\W+', line):
                    word = word.lower()
                    if len(word):
                        l = self.hash_map.lookup(word)
                        self.hash_map.insert(word, l + 1 if l > 0 else 1)

    def compute_frequency_lines(self) -> list:
        """ Returns the frequencies of the first 500 most frequent words
        Returns:
            List[str] : The lines to be plotted
        Test:
            >>> wc = WordCount()
            >>> wc.hash_map = HashMap(8, [('this', 3), ('is', 2), ('a', 5),\
('test', 4)])
            >>> wc.compute_frequency_lines()
            ['1\\t5\\ta', '2\\t4\\ttest', '3\\t3\\tthis', '4\\t2\\tis']
        """
        freq = sorted(self.hash_map.get_key_value_pairs(),
                      key=lambda e: e[1], reverse=True)
        result = map(lambda e:
                     str(e[0]) + '\t' + str(e[1][1]) + '\t' + e[1][0],
                     zip(range(1, 501), freq))
        return list(result)


if __name__ == '__main__':
    # Parse command line arguments
    if len(sys.argv) != 2:
        print("Usage: ./words_main.py <file>")
        sys.exit(1)

    file_name = sys.argv[1]

    wc = WordCount()
    wc.read_text_file(file_name)
    print('\n'.join(wc.compute_frequency_lines()))
