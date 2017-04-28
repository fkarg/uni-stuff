// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>
//         Felix Karg  <felix.karg@uranus.uni-freiburg.de>

#include <iostream>
#include <string>

#include <vector>
#include "./Merge.h"

// ____________________________________________________________________________
// original merge-function written by Bast
std::vector<int> merge2(std::vector<int> v1, std::vector<int> v2) {
    std::size_t n1 = v1.size();
    std::size_t n2 = v2.size();
    std::size_t i1 = 0;
    std::size_t i2 = 0;
    std::size_t k = 0;
    std::vector<int> result(n1 + n2);
    while (i1 < n1 || i2 < n2) {
        if (i1 < n1 && (i2 == n2 || v1[i1] <= v2[i2]))
            result[k++] = v1[i1++];
        if (i2 < n2 && (i1 == n1 || v2[i2] <= v1[i1]))
            result[k++] = v2[i2++];
    }
    return result;
}


// ____________________________________________________________________________
void merge(std::vector<int>& vec, int left, int middle, int right) {
    // wrapper for the other merge-function.
    // completely unnecessary, but o well xD
    // would have been faster with a rewrite though ...

    if (middle > static_cast<int>(vec.size())
            || right > static_cast<int>(vec.size()))
        return;

    std::vector<int> fst(middle - left);
    std::vector<int> snd(right - middle);

    int i = left;

    for (; i < middle; i++) {
        fst[i - left] = vec[i];
    }
    for (; i < right; i++) {
        snd[i - middle] = vec[i];
    }

    // actually sorting the values in the other function
    std::vector<int> sorted = merge2(fst, snd);

    // setting the values to the original vector
    for (int j = left; j < right; j++) {
        vec[j] = sorted[j - left];
    }
}


