// Copyright 2017 Felix Karg <felix.karg@uranus.uni-freiburg.de>

#ifndef DIJKSTRA_H
#define DIJKSTRA_H

#include <vector>
#include <queue>
#include "Graph.h"

#include <iostream>


class CompareDist {
 public:
    bool operator()(std::pair<int, float> n1, std::pair<int, float> n2) {
        return n1.second > n2.second;
    }
};

// This is a wrapper for the Dijkstra-Algorithm as we need it
class Dijkstra {
 private:
     // the graph we will operate on
    Graph* graph;

    // if we have a Node as an Aim
    bool aimNode = false;
    int aimNodeI = 0;

    // Starting Node, everything is referenced to it.
    int startNodeI = 0;

    // The actual stuff for the algorithm
    bool isEvaluated = false;       // if we actually already evaluated the
    std::vector<std::pair<int, float> > paths;
    // the shortest path to each of the nodes, beginning with the startNode
    // and ending with itself. (if existent yet), as well as the cost
    std::vector<bool> settled;  // if the node at this index is already
    std::priority_queue<std::pair<int, float>,
        std::vector<std::pair<int, float> >, CompareDist> active;
    int current = 0;

 public:
    // initializer taking a graph
    Dijkstra(Graph* graph, int startNode);

    // setting a node we want to reach
    void setAimNode(int index);

    // actually running the algorithm
    void run();

    // getting the shortest path to this node (from the startNode)
    std::vector<int> getShortestPathTo(int index);

    // getting the shortest distance to this node (from the startNode)
    float getShortestDistTo(int index);

    // getting the index of the node which is the
    // maximum distance from the startNode
    int getLongestShortest();
};

#endif
