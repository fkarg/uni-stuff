# Aufgabe 6.2
# ===========

from copy import deepcopy
from typing import Dict


def nextranking(ranking: Dict[str, float],
                network: Dict[str, set]) -> Dict[str, float]:
    """Returns next ranking for all websites based on network.

    Args:
        ranking (dict[str, float]): The current Ranking of the websites.
        network (dict[str, set[str]): Websites internal linkage.

    Returns:
        dict[str, float]: the new ranking of the current network

    """

    # 85%: Verlinkte Website.
    # 15%: Beliebige Website in network.

    # j,i: Webseiten
    # n seiten von i verlinkt.
    # m: Anzahl aller Seiten im Netzwerk
    # pij = 0.85/n + 0.15/m
    # xij = ranking[i] * pij(i, network)
    # neues ranking (Seite j): Σxij über alle i

    def p(i, j):
        n = len(network[i])
        m = len(network)
        if n == 0:
            return 1/m
        elif j in network[i]:
            return 0.85/n + 0.15/m
        else:
            return 0.15/m

    def x(i, j):
        return ranking[i] * p(i, j)

    nranking = {}

    for j in network:
        for i in network:
            nranking[j] = nranking.get(j, 0) + x(i, j)

    return nranking


def ranking(network: Dict[str, set]) -> Dict[str, float]:
    """Iteratively returns the ranking for the given interlinked network.

    Args:
        network (Dict[str, set]): The known network on which the user will be

    Returns:
        rating (Dict[str, float]): The probabilities of the user being
                                    on each of the sites.

    """

    def isdiff(r1, r2):
        for k in r1.keys():
            if abs(r1[k] - r2[k]) > 1e-6:
                return True
        return False

    frank = {e: 1/len(network) for e in network.keys()}
    srank = nextranking(frank, network)

    while isdiff(frank, srank):
        frank = srank
        srank = nextranking(frank, network)
    return srank
