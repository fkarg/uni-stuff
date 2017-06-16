// Copyright 2017, University of Freiburg,
// Author: Felix Karg  <felix.karg@uranus.uni-freiburg.de>

#include "Counter.h"
#include <gtest/gtest.h>


TEST(Counter, increment) {
    auto c = Counter(new int[4] {2, 9, 5, 9}, 4);

    for (int i = 0; i < 1801; i++) {
        c.increment();
    }

    ASSERT_EQ("0001", c.toString());
}


TEST(Counter, toString) {
    auto c = Counter(new int[4] {2, 9, 5, 9}, 4);

    for (int i = 0; i < 9; i++) {
        c.increment();
    }
    ASSERT_EQ("0009", c.toString());


    for (int i = 0; i < 10; i++) {
        c.increment();
    }
    ASSERT_EQ("0019", c.toString());

    for (int i = 0; i < 40; i++) {
        c.increment();
    }
    ASSERT_EQ("0059", c.toString());
    c.increment();
    ASSERT_EQ("0100", c.toString());

    for (int i = 0; i < 60; i++) {
        c.increment();
    }
    ASSERT_EQ("0200", c.toString());

    for (int i = 0; i < 480; i++) {
        c.increment();
    }
    ASSERT_EQ("1000", c.toString());

    for (int i = 0; i < 540; i++) {
        c.increment();
    }
    ASSERT_EQ("1900", c.toString());

    for (int i = 0; i < 5 * 60 - 1; i++) {
        c.increment();
    }
    ASSERT_EQ("2359", c.toString());


    for (int i = 0; i < 1800; i++) {
        c.increment();
    }
    ASSERT_EQ("2359", c.toString());

    for (int i = 0; i < 1 + 6 * 60; i++) {
        c.increment();
    }
    ASSERT_EQ("0000", c.toString());
}
