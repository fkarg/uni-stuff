// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>
//         Felix Karg <felix.karg@uranus.uni-freiburg.de>

#include "./MergeSort.h"
#include "./Merge.h"


// ____________________________________________________________________________
void MergeSort::sort(std::vector<int>& input) {
    std::size_t vecsize = input.size();
    std::size_t csize = 1;
    int vecsizei = static_cast<int>(vecsize);

    // Merging stuff based on mergeSort, refer to
    // daphne.informatik.uni-freiburg.de/ss2017/AlgoDat/svn/public/folien/vorlesung-01b.pdf
    // for further reference
    while (csize * 2 < vecsize) {
        for (int left = 0, middle = csize, right = csize * 2;
            right < vecsizei && middle <= right;
            left += 2 * csize, middle += 2 * csize, right += 2 * csize) {
            merge(input, left, middle, right);
        }
        csize *= 2;
    }

    // one last merging with the right (forgotten) border
    merge(input, 0, static_cast<int>(csize), vecsizei);
}

