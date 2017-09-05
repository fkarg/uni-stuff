// Copyright 2017 Felix Karg <felix.karg@uranus.uni-freiburg.de>

#include "Dijkstra.h"

// creating a new Dijkstra-Object, which requires a
// Graph and a Node to start any search from.
Dijkstra::Dijkstra(Graph* graph, int startNode) {
    Dijkstra::graph = graph;
    Dijkstra::startNodeI = startNode;
}


// setting the node to aim for ...
// might not get fully implemented.
void Dijkstra::setAimNode(int index) {
    aimNode = true;
    aimNodeI = index;
}

// evaluates the whole graph, and sets values for each distance.
void Dijkstra::run() {
    if (isEvaluated) {
        return;
    }

    // initializing
    settled = std::vector<bool>(graph->getMaxNodes());
    paths = std::vector<std::pair<int, float> >(
            graph->getMaxNodes());
    for (size_t i = 0; i < graph->getMaxNodes(); i++) {
        settled[i] = false;
        paths[i] = std::make_pair(i, 0.0);
    }

    active.push(std::make_pair(startNodeI, 0));

    int currentNode;
    while (!active.empty()) {
        currentNode = std::get<0>(active.top());
        active.pop();
        // test if this node has already been settled, so it does not need
        // to be visited again
        if (!settled[currentNode]) {
            settled[currentNode] = true;
            // the connections from the current node to others with their
            // respective weights
            auto connects = graph->getNodeConnections(currentNode);
            int currentNext;
            float val;
            for (size_t i = 0; i < connects.size(); i++) {
                currentNext = std::get<0>(connects[i]);
                val = std::get<1>(connects[i]);

                // if either the default-value of this connection is set,
                // or the value is bigger than with the new connection,
                // set this new path as the current one.
                if (std::get<0>(paths[currentNext]) == currentNext ||
                            std::get<1>(paths[currentNext]) >
                            val + std::get<1>(paths[currentNode])) {
                    // setting currently known shortest path
                    paths[currentNext] = std::make_pair(currentNode,
                            val + std::get<1>(paths[currentNode]));
                }
                // including the reachable node to the active one's,
                // including the current distance
                active.push(std::make_pair(currentNext,
                            std::get<1>(paths[currentNext])));
            }
        }
    }
    isEvaluated = true;
}


// this returns the shortest path to this node if existent,
// otherwise a path to itself
std::vector<int> Dijkstra::getShortestPathTo(int index) {
    if (!isEvaluated) {
        return std::vector<int>();
    }
    auto tmp = std::vector<int>();
    while (startNodeI != index) {
        tmp.push_back(index);
        index = std::get<0>(paths[index]);
        if (index == std::get<0>(paths[index])) {
            break;
        }
    }
    tmp.push_back(index);
    return tmp;
}


// this returns the shortest distance to this node if
// the graph got evaluated already
float Dijkstra::getShortestDistTo(int index) {
    if (isEvaluated) {
        return std::get<1>(paths[index]);
    }
    return -5.0;
}


// returns the longest path from the startNode,
// required for this exercise.
int Dijkstra::getLongestShortest() {
    if (!isEvaluated) {
        return startNodeI;
    }
    int index = 0;
    float value = std::get<1>(paths[index]);

    for (size_t i = 0; i < paths.size(); i++) {
        if (std::get<1>(paths[i]) > value) {
            value = std::get<1>(paths[i]);
            index = i;
        }
    }
    return index;
}
