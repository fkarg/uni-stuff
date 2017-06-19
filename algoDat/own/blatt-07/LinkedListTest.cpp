// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

#include <gtest/gtest.h>
#include <iostream>
#include "./LinkedListItem.h"
#include "./LinkedList.h"

// _____________________________________________________________________________
TEST(LinkedListTest, insertBefore) {
    LinkedListItem::numObjects = 0;
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


// _____________________________________________________________________________
/*
  // Reverse the order of elements inside the list.
  //
  // ll = new LinkedList()
  // ll.insert(new LinkedListItem('A'), nil)
  // ll.insert(new LinkedListItem('B'), nil)
  // ll.insert(new LinkedListItem('C'), nil)
  // ll.insert(new LinkedListItem('D'), nil)
  // ll.to_string() == "first = #1, last = #4
  // [id = #1, prev = #0, next = #2, val = A]
  // [id = #2, prev = #1, next = #3, val = B]
  // [id = #3, prev = #2, next = #4, val = C]
  // [id = #4, prev = #3, next = #0, val = D]"
  // ll.reverse()
  // ll.to_string() == "first = #4, last = #1
  // [id = #4, prev = #0, next = #3, val = D]
  // [id = #3, prev = #4, next = #2, val = C]
  // [id = #2, prev = #3, next = #1, val = B]
  // [id = #1, prev = #2, next = #0, val = A]"
  void reverse();
*/

TEST(LinkedListTest, reverse) {
    LinkedListItem::numObjects = 0;
    LinkedListItem itemA("A");  // #1
    LinkedListItem itemB("B");  // #2
    LinkedListItem itemC("C");  // #3
    LinkedListItem itemD("D");  // #4
    LinkedList list;

    list.insertBefore(&itemD, NULL);
    list.insertBefore(&itemC, &itemD);
    list.insertBefore(&itemB, &itemC);
    list.insertBefore(&itemA, &itemB);

    ASSERT_STREQ(list.toString().c_str(), "first = #1, last = #4\n"
          "[this = #1, prev = #0, next = #2, value = \"A\"]\n"
          "[this = #2, prev = #1, next = #3, value = \"B\"]\n"
          "[this = #3, prev = #2, next = #4, value = \"C\"]\n"
          "[this = #4, prev = #3, next = #0, value = \"D\"]");

    list.reverse();

    ASSERT_STREQ(list.toString().c_str(), "first = #4, last = #1\n"
          "[this = #4, prev = #0, next = #3, value = \"D\"]\n"
          "[this = #3, prev = #4, next = #2, value = \"C\"]\n"
          "[this = #2, prev = #3, next = #1, value = \"B\"]\n"
          "[this = #1, prev = #2, next = #0, value = \"A\"]");
}



// _____________________________________________________________________________
/*
  // Cut out the segment given by l1 and l2 and return it as a new list.
  // l1 and l2 are always contained in the linked list and l1 is always before
  // l2.
  //
  // ll = new LinkedList()
  // ll.insert(new LinkedListItem('A'), nil)
  // l1 = new LinkedListItem('B')
  // ll.insert(l1, nil)
  // l2 = new LinkedListItem('C')
  // ll.insert(l2, nil)
  // ll.insert(new LinkedListItem('D'), nil)
  // ll.to_string() == "first = #1, last = #4
  // [id = #1, prev = #0, next = #2, val = A]
  // [id = #2, prev = #1, next = #3, val = B]
  // [id = #3, prev = #2, next = #4, val = C]
  // [id = #4, prev = #3, next = #0, val = D]"
  // sl = ll.splice(l1, l2)
  // ll.to_string() == "first = #1, last = #4
  // [id = #1, prev = #0, next = #4, val = A]
  // [id = #4, prev = #1, next = #0, val = D]"
  // sl.to_string() == "first = #2, last = #3
  // [id = #2, prev = #0, next = #3, val = B]
  // [id = #3, prev = #2, next = #0, val = C]"
  LinkedList splice(LinkedListItem l1, LinkedListItem l2);
*/

TEST(LinkedListTest, splice) {
    LinkedListItem::numObjects = 0;
    LinkedListItem itemA("A");  // #1
    LinkedListItem itemB("B");  // #2
    LinkedListItem itemC("C");  // #3
    LinkedListItem itemD("D");  // #4
    LinkedList list;
    LinkedList list2;

    list.insertBefore(&itemD, NULL);
    list.insertBefore(&itemC, &itemD);
    list.insertBefore(&itemB, &itemC);
    list.insertBefore(&itemA, &itemB);

    ASSERT_STREQ(list.toString().c_str(), "first = #1, last = #4\n"
          "[this = #1, prev = #0, next = #2, value = \"A\"]\n"
          "[this = #2, prev = #1, next = #3, value = \"B\"]\n"
          "[this = #3, prev = #2, next = #4, value = \"C\"]\n"
          "[this = #4, prev = #3, next = #0, value = \"D\"]");

    list2 = list.splice(&itemB, &itemC);

    ASSERT_STREQ(list.toString().c_str(), "first = #1, last = #4\n"
          "[this = #1, prev = #0, next = #4, value = \"A\"]\n"
          "[this = #4, prev = #1, next = #0, value = \"D\"]");

    ASSERT_STREQ(list2.toString().c_str(), "first = #2, last = #3\n"
          "[this = #2, prev = #0, next = #3, value = \"B\"]\n"
          "[this = #3, prev = #2, next = #0, value = \"C\"]");
}
