""" Created as part of the exercise sheet 4 in
    Info-II, University of Freiburg
    Author: Felix Karg <felix.karg@uranus.uni-freiburg.de>
"""

from functools import reduce


class HashMap:
    """This is an implementation of an HashMap
    Tests:
        >>> m = HashMap()
        >>> [m.insert(str(v), v) for v in range(8)]
        [None, None, None, None, None, None, None, None]
        >>> m._size
        8
        >>> m.lookup('4')
        4
        >>> m.insert('4', 16)
        >>> m.lookup('4')
        16
        >>> m.lookup('5464')
        -1
        >>> sorted(m.get_key_value_pairs())
        [('0', 0), ('1', 1), ('2', 2), ('3', 3),\
 ('4', 16), ('5', 5), ('6', 6), ('7', 7)]
    """

    _list = []
    _size = 0
    _space = 0

    def __init__(self, space=16, lst=[]):
        """ Initializing the HashMap with @space spaces and @lst as items
        Args:
            space (int) : Fixed size of the Map. Can hold more elements though
                          Default 16, slows way down after this many inserts
            lst (list) : List of (k, v)-Tuples to be inserted.
        """
        self._space = space
        self._list = [[] for _ in range(space)]

        for (k, v) in lst:
            self.insert(k, v)

    def gethash(self, s: str) -> int:
        """ Returns 'safe' hash of string, to be used for indexing"""
        return hash(s) % self._space

    def insert(self, key: str, value: int):
        """ Inserting an element.
        Args:
            key (str) : The key for the indexing
            value (int) : The value to be inserted
        """
        if self.lookup(key) == -1:
            self._list[self.gethash(key)].append((key, value))
            self._size += 1
        elif self.lookup(key) is not value:
            self._list[self.gethash(key)] = list(map(
                lambda e: (key, value) if e[0] == key else e,
                self._list[self.gethash(key)]))

    def lookup(self, key: str) -> int:
        """ Looking up this element, returns -1 if not there
        Args:
            key (str) : The key to look for
        Returns:
            (int) : The value at place @key or -1
        """
        for (k, v) in self._list[self.gethash(key)]:
            if k == key:
                return v
        return -1

    def get_key_value_pairs(self) -> list:
        """ Returns a list of (k, v)-Pairs, namely the elements in this Map
        """
        return reduce(lambda x, y: x + y, self._list)
