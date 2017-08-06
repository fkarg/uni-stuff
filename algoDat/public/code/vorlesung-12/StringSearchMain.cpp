// Copyright 2015, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include "./StringSearch.h"

// Main function.
int main(int argc, char** argv) {
  if (argc != 3) {
    std::cout << "Usage: ./StringSearchMain <file> <pattern>" << std::endl;
    exit(1);
  }
  std::string fileName = argv[1];
  std::string pattern = argv[2];
  std::ifstream file(fileName.c_str());
  std::string line;
  StringSearch ss;
  while (file >> line) {
    std::vector<size_t> matches = ss.findMatchesKmp(line, pattern);
    for (auto i : matches) {
      std::cout << line.substr(i, pattern.size()) << std::endl;
    }
  }
}
