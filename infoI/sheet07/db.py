"""Datenbanken.

Author:
    Felix Karg <felix.karg@uranus.uni-freiburg.de>

"""

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
    """Join of two or more tables. Recursive calls for more than two.
    The idea is that for an item a matching 'partner' is being searched for
    and joined. Otherwise the item's being ignored in the further process.

    Args:
        tbl1 (List[Dict[str, str]]): Table1, to be joined with
        tbl2 (List[Dict[str, str]]): Table2
        args Tuple[List[Dict[str, str]]]: More tables to be joined,
            there are recursive calls for that.

    Returns:
        List[Dict[str, str]]: The joined Table.

    """

    if tbl1 is None:
        return tbl2
    if tbl2 is None:
        return tbl1

    inp1 = deepcopy(tbl1)
    inp2 = deepcopy(tbl2)
    ret = []
    keysinBoth = None

    # Fails if table is empty. return empty table.
    try:
        keysinBoth = set(tbl1[0].keys()) & set(tbl2[0].keys())
    except IndexError:
        return ret
    except:
        raise

    # merge fitting items.
    for k in keysinBoth:
        for item in inp1:
            for etem in inp2:
                # print(etem, item)
                if item.get(k) == etem.get(k):
                    etem.update(item)
                    ret.append(etem)

    # for some reason a recursive call doesn't work ...
    # tuple slicing does, however xD
    if len(args) > 0:
        for e in args:
            ret = join(ret, e)

    return ret


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
