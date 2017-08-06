// Copyright 2015, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.
// Modified by Felix Karg <felix.karg@uranus.uni-freiburg.de>

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

  // return the coordinates of this Node
  std::pair<float, float> getNodeCoords(int index);

  // return the connections of this Node to others and their cost
  std::vector<std::pair<int, float> > getNodeConnections(int index);

  // returns the maximum number of Nodes we have
  size_t getMaxNodes();

 private:
  // The number of nodes and edges.
  size_t _numNodes;
  size_t _numEdges;

  // The adjacency lists.
  std::vector<std::vector<std::pair<int, float> > > _adjacencyLists;

  // The coordinates of each node.
  std::vector<std::pair<float, float> > _nodeCoords;
};

#endif  // PUBLIC_CODE_VORLESUNG_10_CPP_GRAPH_H_
