#!/usr/bin/env python3
""" This is an implementation and usage of an Trie

    Author: nickstanisha
    Modified by Felix Karg <felix.karg@uranus.uni-freiburg.de>

source: https://gist.githubusercontent.com/nickstanisha/
733c134a0171a00f66d4/raw/b11d0de8c17a2c56b2b10f59d77afb06aed1ceae/trie.py

Aufgabe 1 ist bearbeitet in erfahrungen.txt
"""
import sys


class Node:
    """ This is a node for a Trie.
    so it either is simply a inbetween-link or
    an actual node with information in it
    Test:
        >>> n = Node('key', 'val')
        >>> n.label
        'key'
        >>> n.data
        'val'
        >>> n.children
        {}
        >>> n.addchild('keys', 'dat')
        >>> n.children
        {'keys': Node('keys', 'dat') + {}}
    """

    label = None
    data = None
    children = dict()

    def __init__(self, label=None, data=None):
        self.label = label
        self.data = data
        self.children = dict()

    def addchild(self, key, data=None):
        """ Adding this key-data pair
        """
        if not isinstance(key, Node):
            self.children[key] = Node(key, data)
        else:
            # I am uncertain as to what this does,
            # but it doesn't happen with this dataset
            # so it's not that important I guess
            self.children[key.label] = Node(key, data)
            print("happened ... failure?")

    def __getitem__(self, key):
        """ Returns the Node or value with this key
        """
        return self.children[key]

    def __repr__(self):
        return 'Node(\'{}\', \'{}\') + {}'.format(self.label, self.data,
                                                  self.children)


class Trie:
    """
    Test:
        >>> trie = Trie()
        >>> words = 'hello goodbye help gerald gold tea ted team \
                to too tom stan standard money'
        >>> for word in words.split(): trie.add(word)
        >>> trie.has_word('goodbye')
        True
        >>> trie.start_with_prefix('g')
        ['gold', 'gerald', 'goodbye']
        >>> trie.start_with_prefix('to')
        ['to', 'tom', 'too']
    """

    head = Node()

    def __init__(self):
        """ Initializing this Trie with a Node
        """
        self.head = Node()

    def __getitem__(self, key):
        """ Returns the corresponding item
        """
        return self.head.children[key]

    def add(self, word, value=None):
        """ Adding this value for this word (inplace)
        """
        current_node = self.head
        word_finished = True

        for i in range(len(word)):
            if word[i] in current_node.children:
                current_node = current_node.children[word[i]]
            else:
                word_finished = False
                break

        # For ever new letter, create a new child node
        if not word_finished:
            # i is still the same as the one in the for loop,
            # thus we are only creating the really required nodes
            while i < len(word):
                current_node.addchild(word[i])
                current_node = current_node.children[word[i]]
                i += 1

        # Let's store the full word at the end node so we don't need to
        # travel back up the tree to reconstruct the word
        # Modification: save a value as well
        value = value if value else word
        if current_node.data is not None:
            current_node.data = (word, current_node.data[1] + [value])
        else:
            current_node.data = (word, [value])

    def has_word(self, word) -> bool:
        if word == '':
            return False
        if word is None:
            raise ValueError('Trie.has_word requires a not-Null string')

        # Start at the top
        current_node = self.head
        exists = True
        for letter in word:
            if letter in current_node.children:
                current_node = current_node.children[letter]
            else:
                exists = False
                break

        # Still need to check if we just reached a word like 't'
        # that isn't actually a full word in our dictionary
        if exists:
            if current_node.data is None:
                exists = False

        return exists

    def start_with_prefix(self, prefix) -> list:
        """ Returns a list of all words in tree that start with prefix """
        words = list()
        if prefix is None:
            raise ValueError('Requires not-Null prefix')

        # Determine end-of-prefix node
        top_node = self.head
        for letter in prefix:
            if letter in top_node.children:
                top_node = top_node.children[letter]
            else:
                # Prefix not in tree, go no further
                return words

        # Get words under prefix
        if top_node == self.head:
            queue = [node for key, node in top_node.children.items()]
        else:
            queue = [top_node]

        # Perform a breadth first search under the prefix
        # A cool effect of using BFS as opposed to DFS is that BFS will return
        # a list of words ordered by increasing length
        while queue:
            current_node = queue.pop()
            if current_node.data is not None:
                # Isn't it nice to not have to go back up the tree?
                words.extend(current_node.data[1])

            queue = [node for key, node in
                     current_node.children.items()] + queue

        return words

    def getdata(self, word):
        """ This returns the 'data' of the node identified by the given word
        """
        if not self.has_word(word):
            raise ValueError('{} not found in trie'.format(word))

        # Race to the bottom, get data
        current_node = self.head
        for letter in word:
            current_node = current_node[letter]

        return current_node.data


if __name__ == '__main__':

    if len(sys.argv) != 2:
        print("Usage: ./" + sys.argv[0] + " <filename>")
        sys.exit(1)

    trie = Trie()

    # assuming the file-format is correct ...
    with open(sys.argv[1]) as f:
        for line in f:
            (name, country, size, loc1, loc2) = line.split("\t")
            trie.add(name.lower(), line)

    while True:
        try:
            prefix = input().lower()
            prefix = prefix if len(prefix) else None
            data = sorted(trie.start_with_prefix(prefix),
                          key=lambda e: int(e.split("\t")[2]))
            list(map(lambda e: print(e[:-2]), data))
        except (EOFError, ValueError):
            # EOFError as well as ValueError for entering newlines
            pass
