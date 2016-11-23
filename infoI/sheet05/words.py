"""Tools for word trees.

Authors:
    Felix Karg <felix.karg@uranus.uni-freiburg.de>
    Stefan Woelfl <woelfl@cs.uni-freiburg.de>
    Thorsten Engesser <engesser@cs.uni-freiburg.de>
    Tim Schulte <schultet@cs.uni-freiburg.de>

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
    pass  # TODO: implement


# 5.2 (b)
def word_freq(tree, word):
    """Return the occurence count of a word in a word tree.

    Args:
        tree (tree): The word tree.
        word (string): The word to search for.

    Returns:
        int: Number of word occurences.

    """
    pass  # TODO: implement


# 5.2 (c)
def print_tree(tree):
    """Print word tree in in-order.

    Args:
        tree (tree): The word tree.

    Returns:
        None

    """
    pass  # TODO: implement


# 5.2 (d)
def freq_words(tree):
    """Build list of lists for word occurences.

    Args:
        tree (tree): The word tree.

    Returns:
        list of lists, where the inner list at index i contains all words
        which occur i+1 times in the tree.
    """
    pass  # TODO: implement
