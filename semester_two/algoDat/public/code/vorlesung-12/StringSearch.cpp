// Copyright 2015, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

#include <vector>
#include <string>
#include "./StringSearch.h"

// _____________________________________________________________________________
std::vector<size_t> StringSearch::findMatchesNaive(const std::string& text,
                                                   const std::string& pattern) {
  numComparisons = 0;
  std::vector<size_t> matches;
  if (pattern.size() == 0 || pattern.size() > text.size()) return matches;
  size_t i = 0;
  while (i < text.size() - pattern.size() + 1) {
    // Check if pattern matches at position i in text.
    size_t j = 0;
    while (j < pattern.size()) {
      numComparisons++;
      if (pattern[j] != text[i + j]) break;
      j++;
    }
    // If loop went to end, pattern matched at position i.
    if (j == pattern.size()) {
      matches.push_back(i);
    }
    i++;
  }
  return matches;
}

// _____________________________________________________________________________
std::vector<size_t> StringSearch::findMatchesKmp(const std::string& text,
                                                 const std::string& pattern) {
  numComparisons = 0;
  std::vector<size_t> matches;
  computeShiftsKmp(pattern);
  if (pattern.size() == 0 || pattern.size() > text.size()) return matches;
  size_t i = 0;
  size_t shift = 0;
  while (i < text.size() - pattern.size() + 1) {
    // Check if pattern matches at position i in text.
    size_t j = shift;
    while (j < pattern.size()) {
      numComparisons++;
      if (pattern[j] != text[i + j]) break;
      j++;
    }
    // If loop went to end, pattern matched at position i.
    if (j == pattern.size()) {
      matches.push_back(i);
    }
    // Here is the only difference to the naive algorithm.
    shift = j > 0 ? shifts[j -1] : 0;
    i = j > 0 ? i + j - shift : i + 1;
    // i++;
  }
  return matches;
}

// _____________________________________________________________________________
void StringSearch::computeShiftsKmp(const std::string& pattern) {
  shifts.resize(pattern.size());
  if (pattern.size() == 0) return;
  shifts[0] = 0;
  for (size_t j = 1; j < pattern.size(); j++) {
    size_t k = shifts[j - 1];
    if (pattern[j] == pattern[k]) {
      shifts[j] = k + 1;
    } else if (pattern[j] == pattern[0]) {
      shifts[j] = 1;
    } else {
      shifts[j] = 0;
    }
  }
}
