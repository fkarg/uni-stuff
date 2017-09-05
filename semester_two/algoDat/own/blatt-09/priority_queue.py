# -*- coding: utf-8 -*-
"""
Copyright 2015, University of Freiburg.

Hannah Bast <bast@cs.uni-freiburg.de>
"""

import random


class PriorityQueue:
    """ A priority queue, as explained in Vorlesung 9a. """

    def __init__(self):
        """ Create an empty PQ.

        >>> pq = PriorityQueue(); pq
        [None]
        """
        self.items = [None]

    def __repr__(self):
        """ A PQ in human-readable form. """
        return str(self.items)

    def insert(self, key, value):
        """ Insert item with given key and value.

        >>> pq = PriorityQueue()
        >>> pq.insert(3, "Q")
        >>> pq.insert(7, "B")
        >>> pq.insert(2, "C")
        >>> pq.insert(1, "X")
        >>> pq
        [None, 1X@1, 2C@2, 3Q@3, 7B@4]
        """
        item = PriorityQueueItem(key, value, len(self.items))
        self.items.append(item)
        self.repair_heap_upwards(item.heap_index)

    def delete_min(self):
        """ Insert item with given key and value.

        >>> pq = PriorityQueue()
        >>> pq.insert(3, "Q")
        >>> pq.insert(7, "B")
        >>> pq.insert(2, "C")
        >>> pq.insert(1, "X")
        >>> pq.delete_min()
        >>> pq
        [None, 2C@1, 7B@2, 3Q@3]
        """
        if self.size() == 0:
            return
        self.swap(1, self.size())
        self.items.pop()
        self.repair_heap_downwards(1)

    def get_min(self):
        """ Get item with minimal key.

        >>> pq = PriorityQueue()
        >>> pq.insert(3, "Q")
        >>> pq.insert(7, "B")
        >>> pq.insert(2, "C")
        >>> pq.insert(1, "X")
        >>> pq.get_min()
        1X@1
        """
        if self.size() == 0:
            return None
        else:
            return self.items[1]

    def repair_heap_downwards(self, i):
        """ Repair heap downwards, as explained in the lecture. """
        it = self.items
        while 2 * i < len(it):
            # First find out, which child is smaller.
            ci = 2 * i
            if ci + 1 < len(it) and it[ci + 1].key < it[ci].key:
                ci = 2 * i + 1
            # If smaller child is smaller than swap and continue.
            if it[ci].key < it[i].key:
                self.swap(i, ci)
            i = ci

    def repair_heap_upwards(self, i):
        """ Repair heap upwards, as explained in the lecture. """
        while (i > 1):
            pi = int(i / 2)
            if self.items[i].key < self.items[pi].key:
                self.swap(i, pi)
            i = pi

    def swap(self, i, j):
        """ Swap items i and j in the items array. """
        it = self.items
        it[i], it[j] = it[j], it[i]
        it[i].heap_index, it[j].heap_index = it[j].heap_index, it[i].heap_index

    def size(self):
        """ The number of items in the PQ.

        >>> pq = PriorityQueue()
        >>> pq.size()
        0
        """
        return len(self.items) - 1


class PriorityQueueItem:
    """ A PQ item, holding an integer and a string. """

    def __init__(self, key, value, heap_index):
        self.key = key
        self.value = value
        self.heap_index = heap_index

    def __repr__(self):
        """ A PQ item in humand-readable form. For example, for key 5 and
        value C at position 2, return 5C@2. """
        return "%d%s@%d" % (self.key, self.value, self.heap_index)


if __name__ == "__main__":
    array = random.sample(range(1, 1000), 999)
    print(array)
    # Now sort with our own(!) PQ.
    result = []
    pq = PriorityQueue()
    for x in array:
        pq.insert(x, "")
    while pq.size() > 0:
        result.append(pq.getMin().key)
        pq.deleteMin()
    print(result)
