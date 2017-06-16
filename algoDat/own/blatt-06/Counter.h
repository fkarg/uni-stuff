// Copyright 2017, University of Freiburg,
// Author: Felix Karg  <felix.karg@uranus.uni-freiburg.de>

#include <vector>
#include <string>
#include <algorithm>
// from https://stackoverflow.com/questions/8877448/how-do-i-reverse-a-c-vector
// (+reverse)

using std::vector;
using std::to_string;
using std::string;
using std::reverse;


struct cache {
    string current;
    int64_t count;      // might not be large enough for some
                        // inputs, thus should be changed
};


class Counter {
 private:
    int64_t internalCounter = 0;                // the internal counter
    vector<int> maximums;                       // the maximum values
    cache folder(int position, cache result);   // internal function

 public:
    Counter(int* max, int length);              // constructor
    explicit Counter(int* max);                 // constructor
    explicit Counter(vector<int> max);          // constructor
    void increment();                           // incrementing the value
    string toString();                          // return string showing
                                                // the current count
};

