// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

#include <stdlib.h>
#include <algorithm>
#include <fstream>
#include <iostream>
#include <string>

// Read text from given file and output the individual words.
int main(int argc, char** argv) {
  // Parse command line arguments.
  if (argc != 2) {
    std::cout << "Usage: ./WordsMain <file>" << std::endl;
    exit(1);
  }
  std::string fileName = argv[1];

  std::string line;
  std::ifstream in(fileName.c_str());
  while (std::getline(in, line)) {
    size_t i = 0;
    size_t start = 0;
    while (i <= line.size()) {
      if (i == line.size() || (line[i] > 0 && !isalnum(line[i])))  {
        if (i > start) {
          std::string word = line.substr(start, i - start);
          std::transform(word.begin(), word.end(), word.begin(), ::tolower);
          std::cout << word << std::endl;
        }
        start = i + 1;
      }
      ++i;
    }
  }
}
