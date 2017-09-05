// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>
//         Felix Karg <felix.karg@uranus.uni-freiburg.de>

#include <gtest/gtest.h>
#include "./MergeSort.h"

#include <iostream>


// _____________________________________________________________________________
TEST(MergeSort, mergeSort) {
    std::vector<int> vec = { 2, 4, 6, 8, 1, 3, 5, 7 };
    MergeSort::sort(vec);
    ASSERT_EQ(8, vec.size());
    ASSERT_EQ(1, vec[0]);
    ASSERT_EQ(2, vec[1]);
    ASSERT_EQ(3, vec[2]);
    ASSERT_EQ(4, vec[3]);
    ASSERT_EQ(5, vec[4]);
    ASSERT_EQ(6, vec[5]);
    ASSERT_EQ(7, vec[6]);
    ASSERT_EQ(8, vec[7]);

    std::vector<int> v = { 2, 4, 6, 8, 1, 3, 5, 7, 9, 9, 8 };

    std::cout << "vector: ";
    for (int i = 0; i < v.size(); i++) {
        std::cout << v[i] << " ";
    }
    std::cout << std::endl;

    MergeSort::sort(v);

    std::cout << "vector: ";
    for (int i = 0; i < v.size(); i++) {
        std::cout << v[i] << " ";
    }
    std::cout << std::endl;

    ASSERT_EQ(11, v.size());
    ASSERT_EQ(1, v[0]);
    ASSERT_EQ(2, v[1]);
    ASSERT_EQ(3, v[2]);
    ASSERT_EQ(4, v[3]);
    ASSERT_EQ(5, v[4]);
    ASSERT_EQ(6, v[5]);
    ASSERT_EQ(7, v[6]);
    ASSERT_EQ(8, v[7]);
    ASSERT_EQ(8, v[8]);
    ASSERT_EQ(9, v[9]);
    ASSERT_EQ(9, v[10]);

}


