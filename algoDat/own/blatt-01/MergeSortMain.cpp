// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>
//         Felix Karg  <felix.karg@uranus.uni-freiburg.de>
//         wsssssssssclaeeee <- von der Poolkatze :-)

#include <vector>
#include <iostream>
#include <chrono>
#include "./MergeSort.h"


// Measure the running time of MergeSort.
int main(int argc, char** argv) {
    for (int n = 10 * 1000; n <= 500 * 1000; n += 10000) {
        std::vector<int> v(n);
        for (std::size_t i = 0; i < v.size(); i++) { v[i] = n - i; }
        auto startTime = std::chrono::steady_clock::now();
        MergeSort::sort(v);
        auto endTime = std::chrono::steady_clock::now();
        auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(
                endTime - startTime).count();
        std::cout << n << "\t" << duration << std::endl;
    }
}






