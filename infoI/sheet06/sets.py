# Aufgabe 6.1
# ===========

import pytest


def subsets(s: set, k: int) -> set:
    """Returns subsets (frozen) containing exactly k elements only.

    Args:
        s (set): The set with all the elements
        k (int): >= 0, The amount of elements that should be contained in each
                    of the subsets

    Returns:
        set() or set containing (frozen) sets with k elements each

    """
    ret = []
    ret2 = []

    if k == 1:
        for e in s:
            ret.append([e])

    if k == len(s):
        return s

    if k > 1:
        for e in s:
            s2 = subsets(s - {e}, k - 1)
            for i in s2:
                t = set(i)
                t.add(e)
                ret.append(t)

    for e in ret:
        ret2.append(frozenset(e))

    return set(ret2)


def powerset(s: set) -> set:
    """Returns the powerset of the given set

    Args:
        s (set): The starting set

    Returns:
        a set with all the possible subsets (frozen).

    """
    ret = {frozenset(), frozenset(s)}

    for i in range(len(s)):
        ret.update(subsets(s, i))

    return ret


def test_subsets_test1():
    s = set(range(4))
    assert subsets(s, 1) == {frozenset({2}), frozenset({3}), frozenset({0}),
                             frozenset({1})}


def test_subsets_test2():
    s = set(range(4))
    assert subsets(s, 2) == {frozenset({1, 2}), frozenset({2, 3}),
                             frozenset({0, 2}), frozenset({1, 3}),
                             frozenset({0, 3}), frozenset({0, 1})}


def test_subsets_test3():
    s = set(range(4))
    assert subsets(s, 3) == {frozenset({0, 2, 3}), frozenset({0, 1, 2}),
                             frozenset({1, 2, 3}), frozenset({0, 1, 3})}


def test_subsets_test4():
    s = set(range(4))
    assert subsets(s,  4) == s


def test_powersets_test1():
    s = {1}
    assert powerset(s) == {frozenset(s), frozenset()}


def test_powersets_test2():
    s = set(range(2))
    assert powerset(s) == {frozenset(s), frozenset(),
                           frozenset({0}), frozenset({1})}


def test_powersets_test3():
    s = set(range(3))
    assert powerset(s) == {frozenset({0}), frozenset({0, 2}), frozenset({1}),
                           frozenset({2}), frozenset({1, 2}),
                           frozenset({0, 1}), frozenset(s), frozenset()}


def test_powersets_test4():
    s = set(range(4))
    assert powerset(s) == {frozenset({3}), frozenset({0}), frozenset({2, 3}),
                           frozenset({0, 2}), frozenset({0, 2, 3}),
                           frozenset({1}), frozenset({1, 3}),
                           frozenset({0, 1, 3}), frozenset({2}),
                           frozenset({1, 2}), frozenset({0, 1}),
                           frozenset({0, 1, 2}), frozenset({0, 3}),
                           frozenset({1, 2, 3}), frozenset(s), frozenset()}


if __name__ == '__main__':
    # -v switches verbose on
    pytest.main("-v %s" % __file__)
