""" Created as part of the exercise sheet 4 in
    Info-II, University of Freiburg
    Author: Felix Karg <felix.karg@uranus.uni-freiburg.de>

    This version does not work, something is going wrong when resizing.
    At some point I decided to not to invest any more time and rewrite it.
    If you can find the mistake, please tell me.
    The (working) version can be found in hash_map2.py

"""


class HashMap:
    """Cuckoo-HashMap, as presented in lecture from Hannah Bast

    """

    _size = 0
    _space = 0
    _list = []

    def __init__(self, space=16, lst=[]):
        """Initializing a new HashMap
        Args:
            space (integral) : size within the new HashMap, default 16
            lst :: [(k,v)] : List of Tuples with (k, v) - Pairs, to be inserted
        """
        print("Creating HashMap", space, lst)
        self._space = space
        self._list = [None] * self._space
        for (k, v) in lst:
            self.insert(k, v)
        print(self.getkvpairs())

    def h1(self, s: str) -> int:
        """ One Hashing-version for the HashMap. Default.
        """
        return hash(s) % self._space

    def h2(self, s: str) -> int:
        """ Second Hashing-Algorithm for the HashMap.
            resulting in usually quite different hashes.
        """
        return hash(s + "123") % self._space

    def insert(self, key: str, value: int):
        """ inserting a new element, namely value at key.
        Args:
            key (str) : The key, where the element is supposed to be inserted
            value (int) : The value, at the index of the key
        """
        print("inserting: ", key, value, ", size: ", self._size)
        if (self._size * 1.0) / self._space > 0.5:
            # hold it below 50 percent, otherwise cuckooing is no good
            print("resizing happened!", self._space, self.getkvpairs())
            other = HashMap(self._space * 2, self.getkvpairs())
            self._space = other._space
            self._size = other._size
            self._list = other._list

        if self.lookup(key) is not -1:
            print("Collision happened!", key, self.getkvpairs())
            self.insertc(key, value)
        else:
            self._list[self.h1(key)] = (key, value)
            self._size += 1

    def insertc(self, key: str, value: int, orig=None):
        """ inserting with cuckoo-variant.
        Args:
            key (str) : The Key. insertnig value here.
            vaule (int) : The Value, inserting at Key.
            orig (str) : The original key, required to find cycles.
        """
        if key == orig:
            print("Cycle detected, Need to create now one", key)
            other = HashMap(self._space * 2, self.getkvpairs())
            self._space = other._space
            self._size = other._size
            self._list = other._list
            self.insert(key, value)
            return

        if self._list[self.h2(key)]:
            (k, v) = self._list[self.h2(key)]
            self.list[self.h2(key)] = (key, value)
            print("within insertc", orig, key)
            if not orig:
                orig = key
            self.insertc(k, v, orig)
        else:
            self.list[self.h2(key)] = (key, value)
            self._size += 1

    def lookup(self, key: str) -> int:
        """ looking up one specific element
        """
        h1k = self.h1(key)
        if self._list[h1k]:
            (k, v) = self._list[h1k]
            if k == key:
                return v
        h2k = self.h2(key)
        if self._list[h2k]:
            (k, v) = self._list[h2k]
            if k == key:
                return v
        return -1

    def getkvpairs(self) -> tuple:
        """ Returns a list of tuples with (k, v) -Pairs.
        """
        return list(filter(lambda x: x is not None, self._list))
