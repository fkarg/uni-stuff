// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

#include "./LinkedListItem.h"
#include <string>
#include <sstream>

// _____________________________________________________________________________
int LinkedListItem::numObjects = 0;

// _____________________________________________________________________________
LinkedListItem::LinkedListItem(const std::string& value) {
  numObjects++;
  this->value = value;
  this->previousItem = NULL;
  this->nextItem = NULL;
  this->id = numObjects;
}

// _____________________________________________________________________________
std::string LinkedListItem::idString(LinkedListItem* item) {
  std::ostringstream os;
  os << "#" << (item != NULL ? item->id : 0);
  return os.str();
}

// _____________________________________________________________________________
std::string LinkedListItem::toString() {
  std::ostringstream os;
  os << "[this = " << idString(this) << ", prev = " << idString(previousItem)
     << ", next = " << idString(nextItem) << ", value = \"" << value << "\"]";
  return os.str();
}
