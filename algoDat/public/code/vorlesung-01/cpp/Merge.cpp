// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

#include <vector>
#include "./Merge.h"

// ____________________________________________________________________________
std::vector<int> merge(std::vector<int> v1, std::vector<int> v2) {
  std::size_t n1 = v1.size();
  std::size_t n2 = v2.size();
  std::size_t i1 = 0;
  std::size_t i2 = 0;
  std::size_t k = 0;
  std::vector<int> result(n1 + n2);
  while (i1 < n1 || i2 < n2) {
    if (i1 < n1 && (i2 == n2 || v1[i1] <= v2[i2])) { result[k++] = v1[i1++]; }
    if (i2 < n2 && (i1 == n1 || v2[i2] <= v1[i1])) { result[k++] = v2[i2++]; }
  }
  return result;
}
