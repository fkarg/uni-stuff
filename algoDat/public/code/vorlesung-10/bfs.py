from graph import Graph


def bfs(graph, s, visited, visited_mark):
    """
    Do breadth-first-search (BFS) starting from node s. Put a mark
    (visited_mark) for each node visited in the visited array. An entry of zero
    mean: not yet visited.
    >>> graph = Graph()
    >>> graph.read("bfs.graph")
    >>> visited = [0] * graph.num_nodes
    >>> bfs(graph, 0, visited, 3)
    >>> visited
    [3, 3, 0, 3, 0]
    """
    
    current_level = [s]
    visited[s] = visited_mark
    while len(current_level) > 0:
        next_level = []
        for u in current_level:
            for (v, cost) in graph.adjancency_lists[u]:
                if visited[v] == 0:
                    next_level.append(v)
                    visited[v] = visited_mark
        current_level = next_level


def connected_components(graph):
    """
    Compute the connected components using BFS. Return an array of size n
    (number of nodes), where each entry contains the index of the connected
    component.
    >>> graph = Graph()
    >>> graph.read("bfs.graph")
    >>> connected_components(graph)
    [1, 1, 2, 1, 2]
    """

    visited = [0] * graph.num_nodes
    num_components = 0
    for u in range(0, graph.num_nodes):
        if visited[u] == 0:
            num_components += 1
            bfs(graph, u, visited, num_components)
    return visited
