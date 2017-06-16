// Copyright 2017, University of Freiburg,
// Author: Felix Karg  <felix.karg@uranus.uni-freiburg.de>

#include <unistd.h>
#include <cstdio>
#include "Counter.h"
#include <iostream>


using std::cout;
using std::flush;


int main() {
    // this is for testing-purposes of the counter,
    // as well as number 2.4

    auto m_ks = new int[4] {2, 9, 5, 9};

    auto c = Counter(m_ks, 4);
    printf("%s", c.toString().c_str());         // displaying initial line

    for (int i = 0; i < 3 * 10 * 6 * 10 - 1; i++) {
        printf("\r%s", c.toString().c_str());   // rewriting line
        cout << flush;  // required for actually displaying it (no buffering!)
        c.increment();
        usleep(20000);  // sleeping for a short moment, but not too long as for
                        // to be too long to not watch it or too short
    }

    printf("%s", ("\r" + c.toString()).c_str());
}

