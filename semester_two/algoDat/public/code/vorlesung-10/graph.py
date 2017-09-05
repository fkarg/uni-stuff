class Graph:

    def __repr__(self):
        """ The graph as human-readable and testable string. """
        edge_strings = []
        for u in range(0, self.num_nodes):
            for (v, cost) in self.adjancency_lists[u]:
                edge_strings.append("%d->%d|%d" % (u, v, cost))
        return "[" + ", ".join(edge_strings) + "]"

    def __init__(self):
        """ Create an empty graph. """
        self.num_nodes = 0
        self.num_edges = 0
        self.adjancency_lists = []

    def read(self, file_name):
        """ Read graph from given file.
        >>> graph = Graph()
        >>> graph.read("example.graph")
        >>> graph
        [0->3|3, 1->0|1, 1->2|-2, 2->3|3, 3->2|5]
        """

        with open(file_name) as f:
            self.num_nodes = int(f.readline())
            self.num_edges = int(f.readline())
            for u in range(0, self.num_nodes):
                self.adjancency_lists.append([])
            for line in f:
                if not line.startswith("#"):
                    (u, v, cost) = line.split("\t")
                    self.adjancency_lists[int(u)].append((int(v), int(cost)))
