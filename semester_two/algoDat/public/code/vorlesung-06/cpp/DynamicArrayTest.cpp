// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

#include <gtest/gtest.h>
#include "./DynamicArray.cpp"

// _____________________________________________________________________________
TEST(DynamicArrayTest, pushBackAndPopBack) {
  DynamicArray da;
  da.pushBack(1);
  ASSERT_EQ(1, da._size);
  ASSERT_EQ(1, da._elements[0]);
  da.pushBack(2);
  ASSERT_EQ(2, da._size);
  ASSERT_EQ(1, da._elements[0]);
  ASSERT_EQ(2, da._elements[1]);
  da.popBack();
  ASSERT_EQ(1, da._size);
  ASSERT_EQ(1, da._elements[0]);
  da.popBack();
  ASSERT_EQ(0, da._size);
}
