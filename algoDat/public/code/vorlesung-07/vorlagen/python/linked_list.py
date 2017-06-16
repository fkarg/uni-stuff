"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Hannah Bast <bast@cs.uni-freiburg.de>
"""


class LinkedList:
    """
    A doubly-linked list of items of type LinkedListItem.

    >>> LinkedListItem.num_items = 0
    >>> ll = LinkedList()
    >>> item_C = LinkedListItem('C')
    >>> item_A = LinkedListItem('A')
    >>> item_B = LinkedListItem('B')
    >>> item_D = LinkedListItem('D')
    >>> ll.insert_before(item_C, None)    # Insert item C into the empty list.
    >>> ll.insert_before(item_A, item_C)  # Insert item A before item C.
    >>> ll.insert_before(item_B, item_C)  # Insert item B between items A and C.
    >>> ll.insert_before(item_D, None)    # Insert item D at the end.
    >>> ll
    first = #2, last = #4
    [id = #2, prev = #0, next = #3, val = A]
    [id = #3, prev = #2, next = #1, val = B]
    [id = #1, prev = #3, next = #4, val = C]
    [id = #4, prev = #1, next = #0, val = D]
    """

    def __init__(self):
        """ Construct an empty linked list. """

        self.first = None
        self.last = None

    def __repr__(self):
        """ The current state of the list in human-readable form. """

        result = \
            "first = #" + str(0 if self.first is None else self.first.id) \
            + ", last = #" + str(0 if self.last is None else self.last.id)
        item = self.first
        while item is not None:
            result += "\n" + str(item)
            item = item.next
        return result

    def insert_before(self, new_item, next_item):
        """ Insert new_item before next_item. If next_item is None, insert
        new_item at the end of the list. """

        # First set the (two) new prev pointers (including possibly last).
        if next_item is not None:
            new_item.prev = next_item.prev
            next_item.prev = new_item
        else:
            new_item.prev = self.last
            self.last = new_item
        # Then set the (two) new next pointers (including possibly first).
        if new_item.prev is not None:
            new_item.next = next_item
            new_item.prev.next = new_item
        else:
            new_item.next = self.first
            self.first = new_item


class LinkedListItem:
    """
    A single item from a linked list.

    >>> LinkedListItem.num_items = 0
    >>> LinkedListItem('A')
    [id = #1, prev = #0, next = #0, val = A]
    """

    num_items = 0

    def __init__(self, value):
        """ Construct an item with given value. Also have an id for each item,
        so that we can simply show pointers as ids. """

        LinkedListItem.num_items += 1
        self.id = LinkedListItem.num_items
        self.prev = None
        self.next = None
        self.value = value

    def __repr__(self):
        """ Item as human-readable string. In Java or C++, use a function like
        toString(). """

        return "[id = #" + str(self.id) \
            + ", prev = #" + str(0 if self.prev is None else self.prev.id) \
            + ", next = #" + str(0 if self.next is None else self.next.id) \
            + ", val = " + str(self.value) + "]"
