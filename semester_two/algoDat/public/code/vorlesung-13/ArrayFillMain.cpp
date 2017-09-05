// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

#include <iostream>
#include <chrono>
#include <vector>

// A simple profiling task.
int main(int argc, char** argv) {
  int n = 1000 * 1000;
  std::cout << std::endl;
  for (int run = 0; run < 3; run++) {
    std::cout << "Filling std::vector with 1M integers ... ";
    auto startTime = std::chrono::system_clock::now();
    std::vector<int> array;
    array.resize(n);
    for (int i = 0; i < n; i++) {
      array[i] = i;
      // array.push_back(i);
    }
    auto endTime = std::chrono::system_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>
      (endTime - startTime);
    std::cout << "done in " << duration.count() << "ms" << std::endl;
  }
  std::cout << std::endl;
  for (int run = 0; run < 3; run++) {
    std::cout << "Filling C/C++ native array with 1M integers ... ";
    auto startTime = std::chrono::system_clock::now();
    int* array = new int[n];
    for (int i = 0; i < n; i++) {
      array[i] = i;
    }
    auto endTime = std::chrono::system_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>
      (endTime - startTime);
    std::cout << "done in " << duration.count() << "ms" << std::endl;
  }
  std::cout << std::endl;
}
