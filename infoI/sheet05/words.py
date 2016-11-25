"""Tools for word trees.

Authors:
    Stefan Woelfl <woelfl@cs.uni-freiburg.de>
    Thorsten Engesser <engesser@cs.uni-freiburg.de>
    Tim Schulte <schultet@cs.uni-freiburg.de>
    Felix Karg <felix.karg@uranus.uni-freiburg.de>

"""

LETTERS = "abcdefghijklmnopqrstuvwxyz" + \
          "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + \
          "Ã„ÃœÃ–Ã¤Ã¼Ã¶ÃŸ"


def next_word(s):
    """Return the first word (or None) of an input string s and the rest of it.

    Args:
        s (str): The input string.

    Returns:
        (str or None, str): The first word and the rest of s.

    Examples:
    >>> next_word('asdf asdf xyqr')
    ('asdf', ' asdf xyqr')
    >>> next_word('echatsteinschalosch')
    ('echatsteinschalosch', '')
    >>> next_word('spam&&ham  ham...')
    ('spam', '&&ham  ham...')

    Leading whitespaces and other invalid characters are removed:
    >>> next_word(' &foo @bar')
    ('foo', ' @bar')

    If the input string contains no valid word, None is returned instead:
    >>> next_word('$$$')
    (None, '')
    >>> next_word('')
    (None, '')

    """
    skip = 0
    for c in s:
        if c in LETTERS:
            break
        else:
            skip += 1
    if skip == len(s):
        return None, ''

    take = 0
    for i in range(skip, len(s)):
        if s[i] in LETTERS:
            take += 1
        else:
            break

    return s[skip:skip+take], s[skip+take:]


# 5.2 (a)
def word_tree(s):
    """Return a word tree for an input string s.

    Args:
        s (str): The input string.

    Returns:
        None or [tree, tree, str, int]: A list representation of a tree.


    """

    def tree_insert(tree, w):
        if tree is None:
            return [None, None, w, 1]
        elif w == tree[2]:
            tree[3] += 1
            return tree
        elif w < tree[2]:
            tree[0] = tree_insert(tree[0], w)
            return tree
        elif w > tree[2]:
            tree[1] = tree_insert(tree[1], w)
            return tree
        print(tree, w)

    # data Tree a = None | Tree { lt :: Tree a, rt :: Tree a, a, Int }

    tree = None
    re = s

    while len(re) > 0:
        new, re = next_word(re)
        if new is not None:
            tree = tree_insert(tree, new)

    return tree


# 5.2 (b)
def word_freq(tree, word):
    """Return the occurence count of a word in a word tree.

    Args:
        tree (tree): The word tree.
        word (string): The word to search for.

    Returns:
        int: Number of word occurences.

    """

    if tree is None:
        return 0

    if word == tree[2]:
        return tree[3]
    if word < tree[2]:
        return word_freq(tree[0], word)
    if word > tree[2]:
        return word_freq(tree[1], word)

    return 0


# 5.2 (c)
def print_tree(tree):
    """Print word tree in in-order.

    Args:
        tree (tree): The word tree.

    Returns:
        None

    """
    def tuple_elem(el):
        if el is None:
            return []
        return [(el[2], el[3])] + tuple_elem(el[0]) + tuple_elem(el[1])

    def pretty_string(tup, m):
        s, a = tup
        return s.ljust(m) + ' : ' + str(a)

    def ltup(tup):
        s, o = tup
        return len(s)

    tuples = tuple_elem(tree)
    m = max(map(ltup, tuples))
    list(map(lambda x: print(pretty_string(x, m)), tuples))


# 5.2 (d)
def freq_words(tree):
    """Build list of lists for word occurences.

    Args:
        tree (tree): The word tree.

    Returns:
        list of lists, where the inner list at index i contains all words
        which occur i+1 times in the tree.
    """

    def build_list(lst, tree):
        if tree is None:
            return lst
        if tree[3] > len(lst):
            lst.append([])
            return build_list(lst, tree)
        lst[tree[3]-1] += [tree[2]]
        lst = build_list(lst, tree[0])
        lst = build_list(lst, tree[1])
        return lst

    ret = []
    return build_list(ret, tree)
