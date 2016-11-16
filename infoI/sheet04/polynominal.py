# Aufgabe 4.3
# ===========
"""Polynominal

This module defines some functions for deriving polynominal functions
represented in tuples.

Authors:
    Felix Karg felix.karg@uranus.uni-freiburg.de

Examples:
    >>> first_deriv((0, 5, 7))
    (5, 14)
    >>> first_deriv((4,))
    ()
    >>> deriv((4, 3, 2), 1) == first_deriv((4, 3, 2))
    True
    >>> deriv((1, 2, 3), 0)
    (1, 2, 3)

"""


def first_deriv(t):
    """Deriving the polynominal function.

    Args:
        n-tuple containting (int) a_0..a_N, values a_0 * x^0 + ... + a_N * x^N.

    Returns:
        (n-1)-tuple with the first derivative of this function.

    Notes:
        Pass tuples with len(t) > 0 only. Might crash otherwise.

    Examples:
        >>> first_deriv((4, 3, 2))
        (3, 4)
        >>> first_deriv((5, 4, 3, 2))
        (4, 6, 6)
        >>> first_deriv((0, 5, 7))
        (5, 14)
        >>> first_deriv((4,))
        ()

    """

    return tuple([p*i for i, p in enumerate(t)][1:])


def deriv(t, k):
    """Deriving the polynominal t k-times.

    Args:
        t (int, **): polyonaminal function represented as n-tuple
        k (int): how often t is supposed to be getting derived

    Returns:
        (n-k)-int-tuple or None

    Notes:
        Also see first_deriv(t).

    Examples:
        >>> deriv((1, 2, 3, 4, 5), 2)
        (6, 24, 60)
        >>> deriv((4, 3, 2), 1) == first_deriv((4, 3, 2))
        True
        >>> deriv((1, 2, 3), 0)
        (1, 2, 3)
        >>> deriv((5, 4, 3, 2, 1), (-3)) == None
        True

    """

    if k == 0:
        return t

    if k > 0:
        return deriv(first_deriv(t), k-1)

    pass
