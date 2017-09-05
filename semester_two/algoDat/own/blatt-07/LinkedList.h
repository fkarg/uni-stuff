// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>,
//         Axel Lehmann <lehmann@uni-freiburg.de>.

#ifndef VORLESUNG_07_CPP_LINKEDLIST_H_
#define VORLESUNG_07_CPP_LINKEDLIST_H_

#include <string>
#include "./LinkedListItem.h"

// Class for a doubly-linked list.
class LinkedList {
 protected:
  // this actually reverses the items, beginning with the first
  void reverser(LinkedListItem* turn);

 public:
  // Create an empty list.
  LinkedList();

  // Insert an element into the list, *before* the given item.
  void insertBefore(LinkedListItem* newItem, LinkedListItem* nextItem);

  // reversing the order of the doubly-linked list
  void reverse();

  // splicing out the part from @begin to @end from the list
  // and returning it
  LinkedList splice(LinkedListItem* begin, LinkedListItem* end);

  // The first item in the list.
  LinkedListItem* firstItem;

  // The last item in the list.
  LinkedListItem* lastItem;

  // This item as human-readable string.
  std::string toString();
};

#endif  // VORLESUNG_07_CPP_LINKEDLIST_H_
