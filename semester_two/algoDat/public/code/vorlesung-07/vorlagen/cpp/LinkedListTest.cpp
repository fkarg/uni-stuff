// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

#include <gtest/gtest.h>
#include <iostream>
#include "./LinkedListItem.h"
#include "./LinkedList.h"

// _____________________________________________________________________________
TEST(LinkedListTest, insertBefore) {
  LinkedListItem itemC("C");  // #1
  LinkedListItem itemA("A");  // #2
  LinkedListItem itemB("B");  // #3
  LinkedListItem itemD("D");  // #4
  LinkedList list;

  list.insertBefore(&itemC, NULL);
  std::cout << list.toString() << std::endl;

  list.insertBefore(&itemA, &itemC);
  std::cout << std::endl;
  std::cout << list.toString() << std::endl;

  list.insertBefore(&itemB, &itemC);
  std::cout << std::endl;
  std::cout << list.toString() << std::endl;

  list.insertBefore(&itemD, NULL);
  std::cout << std::endl;
  std::cout << list.toString() << std::endl;

  ASSERT_STREQ(list.toString().c_str(), "first = #2, last = #4\n"
      "[this = #2, prev = #0, next = #3, value = \"A\"]\n"
      "[this = #3, prev = #2, next = #1, value = \"B\"]\n"
      "[this = #1, prev = #3, next = #4, value = \"C\"]\n"
      "[this = #4, prev = #1, next = #0, value = \"D\"]");
}
