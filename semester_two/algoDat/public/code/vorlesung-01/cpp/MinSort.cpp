// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

#include <vector>
#include <utility>
#include <iostream>
#include "./MinSort.h"

// _____________________________________________________________________________
void MinSort::sort(std::vector<int>& v) {
  for (std::size_t i = 0; i + 1 < v.size(); i++) {
    // Find minimum in v[i..end].
    int minValue = v[i];
    int minIndex = i;
    for (std::size_t j = i + 1; j < v.size(); j++) {
      if (v[j] < minValue) {
        minValue = v[j];
        minIndex = j;
      }
    }
    // Swap minimum to front.
    std::swap(v[i], v[minIndex]);
  }
}
