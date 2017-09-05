// Copyright 2015, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

#ifndef PUBLIC_CODE_VORLESUNG_10_CPP_GRAPH_H_
#define PUBLIC_CODE_VORLESUNG_10_CPP_GRAPH_H_

#include <string>
#include <utility>
#include <vector>

// The graph class from Vorlesung 10a+b, C++ version.
class Graph {
 public:
  // Create an empty graph.
  Graph();

  // Read graph from file.
  void read(std::string fileName);

  // Graph as humand-readable and testable string.
  std::string toString();

 private:
  // The number of nodes and edges.
  size_t _numNodes;
  size_t _numEdges;

  // The adjacency lists.
  std::vector<std::vector<std::pair<int, float>>> _adjacencyLists;

  // The coordinates of each node.
  std::vector<std::pair<float, float>> _nodeCoords;
};

#endif  // PUBLIC_CODE_VORLESUNG_10_CPP_GRAPH_H_
