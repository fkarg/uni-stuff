// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

#ifndef VORLESUNG_07_CPP_LINKEDLISTITEM_H_
#define VORLESUNG_07_CPP_LINKEDLISTITEM_H_

#include <string>

// Class for a single linked list item.
class LinkedListItem {
 public:
  // Create new item with given value.
  explicit LinkedListItem(const std::string& value);

  // The value of this item (any string, can be the same for different items.
  std::string value;

  // An internal id, for debugging purposes only.
  int id;

  // Internal count of the number of objects created, used for the internal id.
  static int numObjects;

  // The id as human-readable string, #0 if NULL.
  static std::string idString(LinkedListItem* item);

  // The item previous to this one, NULL if first item.
  LinkedListItem* previousItem;

  // The item next to this one, NULL if last item.
  LinkedListItem* nextItem;

  // This item as human-readable string.
  std::string toString();
};

#endif  // VORLESUNG_07_CPP_LINKEDLISTITEM_H_
