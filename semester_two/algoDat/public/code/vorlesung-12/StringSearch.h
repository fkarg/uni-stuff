// Copyright 2015, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

#include <vector>
#include <string>

// Collection of string matching functions.
class StringSearch {
 public:
  // Find all matches of the given pattern in the given text using the naive
  // algorithm.
  std::vector<size_t> findMatchesNaive(const std::string& text,
                                       const std::string& pattern);

  // Find all matches of the given pattern in the given text using KMP.
  std::vector<size_t> findMatchesKmp(const std::string& text,
                                     const std::string& pattern);

  // Precompute shifts for KMP.
  void computeShiftsKmp(const std::string& pattern);

  // The shifts for KMP.
  std::vector<size_t> shifts;

  // Number of comparisons needed.
  size_t numComparisons;
};
