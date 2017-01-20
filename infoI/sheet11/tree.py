"""Suchbäume.
Author: Felix Karg <felix.karg@uranus.uni-freiburg.de>
TODO: Documentation!!!
"""

from math import log2


class SearchTree:
    """ Works, but is compared to FastSearchTree pretty slow.
    """
    trees = None
    item = None
    elems = 0
    depth = None
    changes = 0
    higher = None
    i = 0

    def __init__(self, items=None, higher=None):
        """Init of this Searchtree.

        Args:
            items: (optional) iterator of items to be included.
        """
        self.trees = None
        self.item = None
        self.depth = 0
        self.higher = higher
        self.i = 0

        if items and len(items):
            nitems = list(set(items))
            nitems.sort()
            middle = len(nitems) // 2
            self.item = nitems[middle]
            smaller = nitems[:middle]
            bigger = nitems[middle + 1:]
            self.trees = (SearchTree(smaller, self), SearchTree(bigger, self))
            self.elems = len(items)
            self.changes = self.elems
            self.maxdepth()

    def __contains__(self, item):
        """If this Searchtree contains an element.

        Args:
            item: test if this item is within this tree

        Returns:
            Bool indicating if this element is included

        """

        if self.item is None:
            return False
        if self.item == item:
            return True
        (s, b) = self.trees
        if item < self.item:
            return item in s
        else:
            return item in b

    def __str__(self):
        """String representation of Object.
        """
        if self.trees is None:
            return ' '
        (s, b) = self.trees
        return '(' + str(s) + ',' + str(self.item) + ',' + str(b) + ')'

    def __repr__(self):
        """Returns a SearchTree objectification of an
        SearchTree including the same elements, not
        necessarily in the same ... order.
        """
        return 'SearchTree(' + str(self.tolist()) + ')'

    def __len__(self):
        """Returns length of itself.
        """
        return self.elems

    def __getitem__(self, index):
        """For 'fast' indexing
        """
        return self.tolist()[index]

    def __iter__(self):
        """Returns an iterator of itself
        """
        return self.tolist()

    def next(self):
        """Iterating over self
        """
        self.i += 1
        return self.tolist()[self.i]

    def maxdepth(self):
        """Returns the current maximal depth of this (sub-)Tree
        """
        if self.trees is None:
            return 0
        if self.changes >= 0.1*len(self) or self.depth is None:
            (s, b) = self.trees
            self.depth = 1 + max(s.maxdepth(), b.maxdepth())
            self.changes = 0
        return self.depth

    def add(self, item):
        """Adding one single element.
        """
        if item in self:
            return
        if self.item is None:
            self.item = item
            self.trees = (SearchTree(higher=self), SearchTree(higher=self))
        else:
            (s, b) = self.trees
            if item < self.item:
                s.add(item)
            else:
                b.add(item)
        self.elems += 1
        self.changes += 1
        if self.maxdepth() - 0.2 > 1.5 * log2(len(self) + 1.000000000001) + 2:
            self.dorebind()

    def adds(self, items):
        """Add iterator of objects to existing Tree
        """
        for i in items:
            self.add(i)

        self.rebind()

    def tolist(self):
        """Returns list-representation of objects in ascending order
        """
        if self.item is not None:
            (s, b) = self.trees
            return s.tolist() + [self.item] + b.tolist()
        else:
            return []

    @classmethod
    def fromlist(cls, items):
        """Creates a new SearchTree from this list
        """
        return cls(items)

    def dorebind(self):
        if len(self) and self.higher is not None:
            self.higher.rebind()
        else:
            self.rebind()

    def rebind(self):
        """Re-Orders the Tree-Structure
        """
        if len(self):
            nt = SearchTree.fromlist(self.tolist())
            self.item = nt.item
            self.trees = nt.trees
            self.elems = nt.elems
            self.depth = None
            self.maxdepth()


class FastSearchTree:
    """ A way faster implementation (in python) of SearchTree,
    Using a list instead of recursion.
    Recursion would be faster (and more elegant) in certain other languages.
    However, in contrast to what the name might imply, this is not actually
    a tree in the computer science interpretation.
    """

    items = None

    def __init__(self, items=None):
        """Initializing this 'Tree'.

        Args:
            items (iterator): iterator of hashable objects (optional)
                              They need to be comparable with Eq and Ord,
                              e.g. '==' and '<' as well. (for the sorting)
        """

        if items and len(items):
            nitems = list(set(items))
            # eliminates doubles.
            # It would work with requiring only equality as well,
            # but then the first insert would be O(n^2) instead of O(n).
            self.items = sorted(nitems)
        else:
            self.items = []

    def __contains__(self, item) -> bool:
        """If this Searchtree contains an element.

        Args:
            item: test if this item is within this tree

        Returns:
            Bool indicating if this element is included
        """

        return item in self.items

    def __str__(self) -> str:
        """String representation of Object.
        """
        return 'FastSearchTree(' + str(self.items) + ')'

    def __repr__(self) -> str:
        """Returns a SearchTree objectification of an
        SearchTree including the same elements
        """
        return str(self)

    def __len__(self) -> int:
        """Returns length of itself.
        """
        return len(self.items)

    def __getitem__(self, index: int):
        """For 'fast' indexing.
        Note: the index of an Element might change after sorting.
              Sorting happens when tolist() is being called.
        """
        return self.items[index]

    def add(self, item):
        """Adding an Element to this SearchTree
        Element won't be added if it's already included.
        Requires only Eq for this element

        Args:
            item: The Element to be added
        """

        if item not in self:
            self.items.insert(0, item)

    def tolist(self) -> list:
        """Returns the sorted list
        Returns:
            list: The sorted elements of this so-called 'Tree'.
        """

        self.items.sort()
        # O(n) for an already sortet list,
        # O(nlog(n)) (maximum) otherwise
        return self.items


def test_trees():
    # testing __init__() ...
    s = SearchTree([1, 5])
    f = FastSearchTree([1, 5])
    # testing __contains __() ...
    assert 3 not in s
    assert 3 not in f
    s.add(3)
    f.add(3)
    assert 3 in s
    assert 3 in f
    # testing tolist() ...
    assert s.tolist() == [1, 3, 5]
    assert f.tolist() == [1, 3, 5]
