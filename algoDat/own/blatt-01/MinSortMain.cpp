// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

#include <vector>
#include <iostream>
#include <chrono>
#include "./MinSort.h"

// Measure the running time of MinSort.
int main(int argc, char** argv) {
    for (int n = 5 * 1000; n <= 50 * 1000; n += 2500) {
        std::vector<int> v(n);
        for (std::size_t i = 0; i < v.size(); i++) { v[i] = n - i; }
        auto startTime = std::chrono::steady_clock::now();
        MinSort::sort(v);
        auto endTime = std::chrono::steady_clock::now();
        auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(
                endTime - startTime).count();
        std::cout << n << "\t" << duration << std::endl;
    }
}
