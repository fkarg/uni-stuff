// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

#include <gtest/gtest.h>
#include "./Merge.h"


// _____________________________________________________________________________
TEST(Merge, merge) {
  {
    std::vector<int> v1 = { 2, 4, 6, 8 };
    std::vector<int> v2 = { 1, 3, 5, 7 };
    std::vector<int> v = merge(v1, v2);
    ASSERT_EQ(8, v.size());
    ASSERT_EQ(1, v[0]);
    ASSERT_EQ(2, v[1]);
    ASSERT_EQ(3, v[2]);
    ASSERT_EQ(4, v[3]);
    ASSERT_EQ(5, v[4]);
    ASSERT_EQ(6, v[5]);
    ASSERT_EQ(7, v[6]);
    ASSERT_EQ(8, v[7]);
  }

  {
    std::vector<int> v1 = {};
    std::vector<int> v2 = { 1, 3, 5, 7 };
    std::vector<int> v = merge(v1, v2);
    ASSERT_EQ(4, v.size());
    ASSERT_EQ(1, v[0]);
    ASSERT_EQ(3, v[1]);
    ASSERT_EQ(5, v[2]);
    ASSERT_EQ(7, v[3]);
  }

  {
    std::vector<int> v1 = { 2, 4, 6, 8 };
    std::vector<int> v2 = {};
    std::vector<int> v = merge(v1, v2);
    ASSERT_EQ(4, v.size());
    ASSERT_EQ(2, v[0]);
    ASSERT_EQ(4, v[1]);
    ASSERT_EQ(6, v[2]);
    ASSERT_EQ(8, v[3]);
  }
}

