# Aufgabe 5.1
# ===========




def flatten(lst: list) -> list:
    """Concatenating a list of lists of elements or elements to a list of 
    elements.

    Args:
        lst: list

    Returns:
        list

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

    retval = []

    for i in lst:
        if isinstance(i, list):
            retval.extend(flatten(i))
        else:
            retval.append(i)

    return retval




def flatten_in_place(lst: list) -> list:
    pass



