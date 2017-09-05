// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

#include <gtest/gtest.h>
#include "./MinSort.h"


// _____________________________________________________________________________
TEST(MinSort, minSort) {
    std::vector<int> v = { 8, 7, 6, 5, 4, 3, 2, 1 };
    MinSort::sort(v);
    ASSERT_EQ(8, v.size());
    ASSERT_EQ(1, v[0]);
    ASSERT_EQ(2, v[1]);
    ASSERT_EQ(3, v[2]);
    ASSERT_EQ(4, v[3]);
    ASSERT_EQ(5, v[4]);
    ASSERT_EQ(6, v[5]);
    ASSERT_EQ(7, v[6]);
    ASSERT_EQ(8, v[7]);

    std::vector<int> v2 = {};
    MinSort::sort(v2);
    ASSERT_EQ(0, v2.size());
}

