// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>,
//         Axel Lehmann <lehmann@cs.uni-freiburg.de>.

#include <fstream>
#include <utility>
#include <sstream>
#include <string>
#include <vector>
#include "./Graph.h"

// _____________________________________________________________________________
Graph::Graph() {
  _numNodes = 0;
  _numEdges = 0;
}

// _____________________________________________________________________________
void Graph::read(std::string fileName) {
  std::ifstream file(fileName.c_str());
  if (!file.is_open()) { perror("File not open"); }

  // Read number of nodes and edges.
  file >> _numNodes;
  file >> _numEdges;
  _adjacencyLists.resize(_numNodes);

  // Read node coordinates.
  for (size_t i = 0; i < _numNodes; i++) {
    float x, y;
    file >> x >> y;
    _nodeCoords.push_back(std::make_pair(x, y));
  }

  // Read edges.
  for (size_t i = 0; i < _numEdges; i++) {
    int u, v;
    float cost;
    file >> u >> v >> cost;
    _adjacencyLists[u].push_back(std::make_pair(v, cost));
  }
}

// Graph as humand-readable and testable string.
std::string Graph::toString() {
  std::ostringstream os;
  os << "[";
  size_t numEdges = 0;
  for (size_t u = 0; u < _numNodes; u++) {
    for (size_t j = 0; j < _adjacencyLists[u].size(); j++) {
      os << u << "->" << _adjacencyLists[u][j].first
              << "|" << _adjacencyLists[u][j].second;
      if (++numEdges < _numEdges) { os << ", "; }
    }
  }
  os << "]";
  return os.str();
}
