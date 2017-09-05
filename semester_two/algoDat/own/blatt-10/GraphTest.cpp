// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>,
//         Axel Lehmann <lehmann@cs.uni-freiburg.de>.

#include <gtest/gtest.h>
#include "./Graph.h"

// _____________________________________________________________________________
TEST(GraphTest, constructor) {
  Graph graph;
  ASSERT_EQ("[]", graph.toString());
}

// _____________________________________________________________________________
TEST(GraphTest, read) {
  Graph graph;
  graph.read("example.graph");
  ASSERT_EQ("[0->3|3, 1->0|1, 1->2|-2, 2->3|2, 3->2|5]", graph.toString());
}
