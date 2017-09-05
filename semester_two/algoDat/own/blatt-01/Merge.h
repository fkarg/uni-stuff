// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>
//         Felix Karg  <felix.karg@uranus.uni-freiburg.de>

#include <vector>

// Merge two sorted arrays.
std::vector<int> merge2(std::vector<int> v1, std::vector<int> v2);


// wrapper for merge2-function, inplace
void merge(std::vector<int>& vec, int left, int middle, int right);


