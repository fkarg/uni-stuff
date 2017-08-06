// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>,
//         Axel Lehmann <lehmann@cs.uni-freiburg.de>.

#include <gtest/gtest.h>
#include <vector>
#include "./Graph.h"
#include "Dijkstra.h"


// _____________________________________________________________________________
TEST(DijkstraTest, all0) {
  Graph graph;
  graph.read("example.graph");
  ASSERT_EQ("[0->3|3, 1->0|1, 1->2|-2, 2->3|2, 3->2|5]", graph.toString());
  Dijkstra dijkstra(&graph, 0);
  dijkstra.run();
  ASSERT_EQ(2, dijkstra.getLongestShortest());
  ASSERT_EQ(std::vector<int>({ 2, 3, 0 }),
          dijkstra.getShortestPathTo(dijkstra.getLongestShortest()));
  ASSERT_EQ(3, dijkstra.getShortestDistTo(3));
  ASSERT_EQ(8, dijkstra.getShortestDistTo(2));
  // connection to self: 0
  ASSERT_EQ(0, dijkstra.getShortestDistTo(0));
  // this node cannot reach Node 0
  ASSERT_EQ(0, dijkstra.getShortestDistTo(1));
}

// _____________________________________________________________________________
TEST(DijkstraTest, all1) {
  Graph graph;
  graph.read("example.graph");
  ASSERT_EQ("[0->3|3, 1->0|1, 1->2|-2, 2->3|2, 3->2|5]", graph.toString());
  Dijkstra dijkstra(&graph, 1);
  dijkstra.run();
  ASSERT_EQ(0, dijkstra.getLongestShortest());
  ASSERT_EQ(std::vector<int>({ 0, 1 }),
          dijkstra.getShortestPathTo(dijkstra.getLongestShortest()));
  ASSERT_EQ(0, dijkstra.getShortestDistTo(3));
  ASSERT_EQ(-2, dijkstra.getShortestDistTo(2));
  ASSERT_EQ(1, dijkstra.getShortestDistTo(0));
  // connection to self: 0
  ASSERT_EQ(0, dijkstra.getShortestDistTo(1));
}


