// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

#include <stdlib.h>
#include <iostream>
#include <chrono>
#include "./DynamicArray.cpp"

// Main function.
int main(int argc, char** argv) {
  // Parse command line arguments.
  if (argc > 3) {
    std::cout << "Usage: ./DynamicArrayMain [<number of elements>] [<k>]"
              << std::endl;
    exit(1);
  }
  int n = argc >= 2 ? atoi(argv[1]) : 1000000;
  int k = argc >= 3 ? atoi(argv[2]) : 1;

  // If called without arguments, go into interactive mode.
  std::string cmd;
  std::string arg;
  if (argc == 1) {
    DynamicArray da;
    while (true) {
      std::cout << "\x1b[1mcmd> \x1b[0m" << std::flush;
      std::cin >> cmd >> arg;
      int n = atoi(arg.c_str());
      if (cmd == "add") {
        for (int i = 0; i < n; i++) da.pushBack(i);
      } else if (cmd == "remove") {
        for (int i = 0; i < n; i++) da.popBack();
      }
      std::cout << "Number of elements: " << da._size << std::endl;
    }
    return 1;
  }

  // Append n elements to an initially empty dynamic array, and after each add
  // measure the absolute running time until that point.
  DynamicArray da;
  auto startTime = std::chrono::steady_clock::now();
  for (int i = 1; i <= n; i++) {
    da.pushBack(i);
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(
        std::chrono::steady_clock::now() - startTime).count();
    if (i % k == 0) std::cout << i << "\t" << duration << std::endl;
  }
}
