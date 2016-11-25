# Aufgabe 5.1
# ===========


def flatten(lst: list) -> list:
    """Concatenating a list of lists of elements or elements to a list of
    elements.

    Args:
        lst: list the list to be flattened

    Returns:
        list: the flattened list

    Example:
        >>> egg = [3,4,[[5]]]
        >>> spam = [[[1, 2, egg], (6, [7]), 8], 9, False]
        >>> flatten(spam)
        [1, 2, 3, 4, 5, (6, [7]), 8, 9, False]
        >>> spam
        [[[1, 2, [3, 4, [[5]]]], (6, [7]), 8], 9, False]
        >>> egg
        [3, 4, [[5]]]


    """

    ret = []

    if len(lst) > 0:
        if isinstance(lst[0], list):
            ret.extend(flatten(lst[0]))
        else:
            ret.append(lst[0])
        ret.extend(flatten(lst[1:]))

    return ret


def flatten_in_place(lst: list) -> list:
    """Flattening the reference of the list in place.

    Args:
        lst: list, the list to be modified

    Returns:
        None, modifies list in place

    Example: 
        >>> egg = [3,4,[[5]]]
		>>> spam = [[[1, 2, egg], (6, [7]), 8], 9, False]
		>>> flatten_in_place(spam)
		>>> spam
		[1, 2, 3, 4, 5, (6, [7]), 8, 9, False]
		>>> egg
		[3, 4, 5]
    """

    for i, e in enumerate(lst):
        if isinstance(e, list):
            flatten_in_place(lst[i])
            lst[i:i+1] = e


# egg  = [3,[4],[[5]]]
# spam = [[[1, 2, egg], (6, [7]), 8], 9, [False]]
