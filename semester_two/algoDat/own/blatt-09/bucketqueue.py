from linked_list import LinkedList, LinkedListItem


class BucketQueue:
    """
    The BucketQueue class, with
        insert, getMin, changeKey (except for minimum element)
            running in (insert amortized) O(1).
    It takes O(maxKey - minKey + M) space.
    Tests:
        >>> LinkedListItem.num_items = 0
        >>> b = BucketQueue()
        >>> b
        BucketQueue
        [first = #0, last = #0]
        >>> b.insert(3, 1)
        >>> b.insert(4, 2)
        >>> b
        BucketQueue
        [first = #1, last = #1
        [id = #1, prev = #0, next = #0, key = 3, val = 1], \
first = #2, last = #2
        [id = #2, prev = #0, next = #0, key = 4, val = 2]]
        >>> b.getmin()
        (3, 1)
        >>> b.changekey(4, 5)
        >>> b
        BucketQueue
        [first = #1, last = #1
        [id = #1, prev = #0, next = #0, key = 3, val = 1], \
first = #0, last = #0, first = #3, last = #3
        [id = #3, prev = #0, next = #0, key = 5, val = 2]]
        >>> b.insert(3, 3)
        >>> b
        BucketQueue
        [first = #1, last = #4
        [id = #1, prev = #0, next = #4, key = 3, val = 1]
        [id = #4, prev = #1, next = #0, key = 3, val = 3], \
first = #0, last = #0, first = #3, last = #3
        [id = #3, prev = #0, next = #0, key = 5, val = 2]]
        >>> b.deletemin()
        (3, 1)
        >>> b.deletemin()
        (3, 3)
        >>> b
        BucketQueue
        [first = #3, last = #3
        [id = #3, prev = #0, next = #0, key = 5, val = 2]]
        >>> b.deletemin()
        (5, 2)
        >>> b
        BucketQueue
        [first = #0, last = #0]

    """

    keys = [LinkedList()]
    minKey = None

    def __init__(self):
        """ Creates a new BucketQueue """
        self.keys = [LinkedList()]
        self.minKey = None

    def __repr__(self):
        """ The representation for the BucketQueue
        """
        return 'BucketQueue\n' + repr(self.keys)

    def insert(self, key: int, value):
        """ Inserts an Item to the BucketQueue
        Args:
            key (int) : The key by which to identify the item
            value (*) : The value to insert at this place
        """
        if self.minKey is None:
            self.minKey = key
        if key < self.minKey:
            raise ValueError
        for _ in range(self.minKey, key - len(self.keys) + 1):
            self.keys.append(LinkedList())
        self.keys[key - self.minKey].insert_before(LinkedListItem(key, value),
                                                   None)

    def getmin(self) -> tuple:
        """ Gives back the current minimal item
        Returns:
            The current minimal (key, value) - tuple.
        """
        return self.keys[0].first.getitem()

    def deletemin(self) -> tuple:
        """ Deletes the current minimal Item and returns it
        Returns:
            The current minimal (key, value) - tuple.
        """
        item = self.keys[0].remove(self.keys[0].first)
        if len(self.keys) == 1:
            return item.getitem()
        while self.keys[0].empty():
            self.keys = self.keys[1:]
        (self.minKey, _v) = self.keys[0].first.getitem()
        return item.getitem()

    def changekey(self, current_key: int, new_key: int):
        """
        Args:
            current_key (int) : The current key of the item
            new_key (int) : The supposed new key of the item
        """
        if current_key == self.minKey:
            (_key, value) = self.deletemin()
            self.insert(new_key, value)
        else:
            item = self.keys[current_key - self.minKey].first
            (key, value) = self.keys[current_key -
                                     self.minKey].remove(item).getitem()
            self.insert(new_key, value)
