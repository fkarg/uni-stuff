// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>,
//         Axel Lehmann <lehmann@cs.uni-freiburg.de>.

#include <iostream>
#include <string>
#include <sstream>
#include "./LinkedList.h"
#include "./LinkedListItem.h"

// _____________________________________________________________________________
LinkedList::LinkedList() {
  firstItem = NULL;
  lastItem = NULL;
}

// _____________________________________________________________________________
void LinkedList::insertBefore(LinkedListItem* newItem,
                              LinkedListItem* nextItem) {
  LinkedListItem* previousItem;
  if (nextItem != NULL) {
    previousItem = nextItem->previousItem;
  } else {
    previousItem = lastItem;
  }

  if (nextItem != NULL) {
    nextItem->previousItem = newItem;
  } else {
    lastItem = newItem;
  }

  newItem->previousItem = previousItem;

  if (previousItem != NULL) {
    previousItem->nextItem = newItem;
  } else {
    firstItem = newItem;
  }

  newItem->nextItem = nextItem;
}

// _____________________________________________________________________________
std::string LinkedList::toString() {
  std::ostringstream os;
  os << "first = " << LinkedListItem::idString(firstItem) << ", "
     << "last = " << LinkedListItem::idString(lastItem) << std::endl;
  LinkedListItem* item = firstItem;
  while (item != NULL) {
    os << item->toString();
    if (item->nextItem != NULL) { os << std::endl; }
    item = item->nextItem;
  }
  return os.str();
}
