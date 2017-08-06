// Copyright 2017 Felix Karg <felix.karg@uranus.uni-freiburg.de>

#include <iostream>
#include "Graph.h"
#include "Dijkstra.h"



int main() {
    // int node = 131208;   // starting Point: Uni Saarland
    int node = 997173;      // starting Point: Uni Freiburg
    Graph graph;
    // graph.read("saarland.graph");
    graph.read("bawue.graph");
    Dijkstra dijkstra(&graph, node);
    std::cout << "running dijkstra ..." << std::endl;
    dijkstra.run();
    int longestN = dijkstra.getLongestShortest();
    auto longest = dijkstra.getShortestPathTo(longestN);
    auto coords = graph.getNodeCoords(longestN);
    std::cout << "[map]";
    for (size_t i = 0; i < longest.size() - 1; i++) {
        coords = graph.getNodeCoords(longest[i]);
        std::cout << std::get<0>(coords) << "," << std::get<1>(coords) << " ";
    }
    coords = graph.getNodeCoords(longest[longest.size() - 1]);
    std::cout << std::get<0>(coords) << "," << std::get<1>(coords);
    std::cout << "[/map]" << std::endl;
    // some other info
    std::cout << "node: "<< longestN << std::endl;
    std::cout << "distance: " << dijkstra.getShortestDistTo(longestN) <<
        std::endl;
    // std::cout << graph.toString() << std::endl;
}
