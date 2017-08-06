// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>,
//         Axel Lehmann <lehmann@cs.uni-freiburg.de>.

#include <gtest/gtest.h>
#include <vector>
#include <string>
#include <sstream>
#include "./StringSearch.h"

// Convert vector to human-readable string.
std::string vectorToString(std::vector<size_t> v) {
  std::ostringstream os;
  os << "[";
  for (auto& x : v) { os << x << (&x != &v.back() ? ", " : ""); }
  os << "]";
  return os.str();
}

// _____________________________________________________________________________
TEST(StringSearchTest, findMatchesNaive) {
  StringSearch ss;
  std::vector<size_t> matches;
  matches = ss.findMatchesNaive("DUBIDUBIDUBADUBIDU", "DUBI");
  ASSERT_EQ("[0, 4, 12]", vectorToString(matches));
  ASSERT_EQ(27, ss.numComparisons);
  matches = ss.findMatchesNaive("DUDUDUDU", "DUDU");
  ASSERT_EQ("[0, 2, 4]", vectorToString(matches));
  ASSERT_EQ(14, ss.numComparisons);
  matches = ss.findMatchesNaive("", "DUDU");
  ASSERT_EQ("[]", vectorToString(matches));
  ASSERT_EQ(0, ss.numComparisons);
  matches = ss.findMatchesNaive("DUDUDUDU", "");
  ASSERT_EQ("[]", vectorToString(matches));
  ASSERT_EQ(0, ss.numComparisons);
}

// _____________________________________________________________________________
TEST(StringSearchTest, findMatchesKmp) {
  StringSearch ss;
  std::vector<size_t> matches;
  matches = ss.findMatchesKmp("DUBIDUBIDUBADUBIDU", "DUBI");
  ASSERT_EQ("[0, 4, 12]", vectorToString(matches));
  ASSERT_EQ(17, ss.numComparisons);
  matches = ss.findMatchesKmp("DUDUDUDU", "DUDU");
  ASSERT_EQ("[0, 2, 4]", vectorToString(matches));
  ASSERT_EQ(8, ss.numComparisons);
  matches = ss.findMatchesKmp("", "DUDU");
  ASSERT_EQ("[]", vectorToString(matches));
  ASSERT_EQ(0, ss.numComparisons);
  matches = ss.findMatchesKmp("DUDUDUDU", "");
  ASSERT_EQ("[]", vectorToString(matches));
  ASSERT_EQ(0, ss.numComparisons);
}

// _____________________________________________________________________________
TEST(StringSearchTest, computeShiftsKmp) {
  StringSearch ss;
  ss.computeShiftsKmp("DUBIDUBADU");
  ASSERT_EQ("[0, 0, 0, 0, 1, 2, 3, 0, 1, 2]", vectorToString(ss.shifts));
  ss.computeShiftsKmp("MIMMI");
  ASSERT_EQ("[0, 0, 1, 1, 2]", vectorToString(ss.shifts));
  ss.computeShiftsKmp("ABCDEFG");
  ASSERT_EQ("[0, 0, 0, 0, 0, 0, 0]", vectorToString(ss.shifts));
  ss.computeShiftsKmp("AAAAAA");
  ASSERT_EQ("[0, 1, 2, 3, 4, 5]", vectorToString(ss.shifts));
  ss.computeShiftsKmp("");
  ASSERT_EQ("[]", vectorToString(ss.shifts));
}
