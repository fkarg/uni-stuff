"""Datenbanken.

Author:
    Felix Karg <felix.karg@uranus.uni-freiburg.de>

"""

from pprint import pprint
from copy import deepcopy

# from typing import Dict, List, Set


#   project(tbl: List[Dict[str, str]], keys: Set[str]) -> List[Dict[str, str]]:
def project(tbl, keys):
    """Projection of given table to possibly subset of it,
        excluding not named ones.

    Args:
        tbl (List[Dict[str, str]]): The table where parts might be stripped
        keys (Set[str]): The set of Keys which are supposed to stay

    Returns:
        List[Dict[str, str]]: new table, which is now possibly a subset of the
            first given table (tbl), excluding items not listed in keys.

    """
    ret = deepcopy(tbl)

    for i, item in enumerate(tbl):
        for k, e in item.iteritems():
            if k not in keys:
                del(ret[i][k])

    return ret


#   select(tbl: List[Dict[str, str]], **kwargs) -> List[Dict[str, str]]:
def select(tbl, **kwargs):
    """Selecting only those items, in which a given attribute-value pair is
        included.

    Args:
        tbl (List[Dict[str, str]]): The table elements are being selected from.
        **kwargs (Dict[str, str]): The to be matched key-value pair.

    Returns:
        List[Dict[str, str]]: Returns only the sublist with the given
            key-value pairs.

    """

    ret = []

    for item in tbl:
        add = True
        for k, v in kwargs.iteritems():
            if not item.get(k, None) == v:
                add = False
        if add:
            ret.append(item)

    return ret


#   join(tbl1: List[Dict[str, str]], tbl2: List[Dict[str, str]],
#       *args: Tuple[List[Dict[str, str]]]) -> List[Dict[str, str]]:
def join(tbl1, tbl2, *args):
    """Join of two or more tables. Recursive calls.
    
    Args:
        tbl1 (List[Dict[str, str]]): Table1, to be joined with
        tbl2 (List[Dict[str, str]]): Table2
        args Tuple[List[Dict[str, str]]]: More tables to be joined,
            there are recursive calls for that.

    Returns:
        List[Dict[str, str]]: The joined Table.

    """

    def merge_correct(item, tbl2a):
        keys = item.iterkeys()
        for i in tbl2a:
            for k in keys:
                if i.has_key(k):
                    pass

    if tbl1 is None:
        return tbl2
    if tbl2 is None:
        return tbl1

    ret = []
                # Fails if table is empty.
    keys = set(tbl1[0].iterkeys()) | set(tbl2[0].iterkeys())

    e = {}
    for k in keys:


    print(keys)

    # return join(ret, 



series = [
        {'s_id': 'bb', 'title': 'Breaking Bad'},
        {'s_id': 'bcs', 'title': 'Better Call Saul'}]

characters = [
        {'c_id': 'ww', 'family_name': 'White', 'given_name': 'Walter'},
        {'c_id': 'sw', 'family_name': 'White', 'given_name': 'Skyler'},
        {'c_id': 'sg', 'family_name': 'Goodman', 'given_name': 'Saul'}]

series_characters = [
        {'c_id': 'ww', 's_id': 'bb'},
        {'c_id': 'sw', 's_id': 'bb'},
        {'c_id': 'sg', 's_id': 'bb'},
        {'c_id': 'sg', 's_id': 'bcs'}]
