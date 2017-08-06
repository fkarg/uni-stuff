"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Axel Lehmann <lehmann@cs.uni-freiburg.de>.
"""


class Graph:

    def __init__(self):
        """ Create an empty directed graph. """
        self.num_nodes = -1
        self.num_edges = -1
        self.adjacency_lists = []
        self.nodes = []

    def read(self, filename):
        """ Read a graph from file.

        >>> g = Graph()
        >>> g.read('example.graph')
        >>> g
        [0->3|3, 1->0|1, 1->2|-2, 2->3|2, 3->2|5]
        """
        with open(filename) as f:
            self.num_nodes = int(f.readline())
            self.num_edges = int(f.readline())
            for u in range(0, self.num_nodes):
                self.nodes.append(Node(u, *f.readline().strip().split('\t')))
                self.adjacency_lists.append([])
            for line in f:
                if line.startswith('#'):
                    continue
                u, v, cost = line.strip().split('\t')
                edge = Edge(v, cost)
                self.adjacency_lists[int(u)].append(edge)

    def __repr__(self):
        """
        Human readable string for a graph.

        >>> g = Graph()
        >>> g
        []
        >>> g.num_nodes = 2
        >>> g.num_edges = 1
        >>> g.adjacency_lists.append([Edge(1, 2)])
        >>> g.adjacency_lists.append([])
        >>> g
        [0->1|2]
        >>> g.adjacency_lists[1].append(Edge(0, -2))
        >>> g
        [0->1|2, 1->0|-2]
        """
        edge_string = []
        for u in range(0, self.num_nodes):
            for edge in self.adjacency_lists[u]:
                edge_string.append('{}{}'.format(u, edge))
        return '[{}]'.format(', '.join(edge_string))


class Node:
    def __init__(self, node_id, latitude, longitude):
        self.id = int(node_id)
        self.latitude = float(latitude)
        self.longitude = float(longitude)
        self.previous_node = None

    def __repr__(self):
        """
        >>> Node(1, '123.45', '67.89')
        1
        """
        return '{}'.format(self.id)


class Edge:
    def __init__(self, head, cost):
        self.head = int(head)
        self.cost = int(cost)

    def __repr__(self):
        """
        >>> Edge(2, 3)
        ->2|3
        """
        return '->{}|{}'.format(self.head, self.cost)
