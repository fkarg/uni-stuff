// Copyright 2017, University of Freiburg,
// Author: Felix Karg  <felix.karg@uranus.uni-freiburg.de>


#include "Counter.h"

/*
 * Folder-function, used in a semi-fold here, takes O(1).
 *
 * Args:
 *      position (int) : the position we are at in our values
 *      result (cache) : re-using inbetween-saved information
 *
 * Returns:
 *      result (cache) : the modified cache, one step further
 */
cache Counter::folder(int position, cache result) {
    result.current = to_string(result.count % (maximums[position] + 1))
                                                + result.current;
    result.count = result.count / (maximums[position] + 1);
    return result;
}


/*
 * Counter-Constructor, creating a new Counter
 * Args:
 *      max (int*) : beginning of array taking the max-values
 *      length (int) : the length of the array
 */
Counter::Counter(int* max, int length) {
    maximums = vector<int>(max, max + length);

    // unclear specification, might not be needed:
    reverse(maximums.begin(), maximums.end());
}


/*
 * Counter-Constructor, creating a new Counter
 * Args:
 *      max (int*) : beginning of array taking the max-values
 *
 *  (should probably work most of the time, it is unknown
 *  to me how this works with sizeof internally)
 */
Counter::Counter(int* max) {
    maximums = vector<int>(max, max + sizeof(max));
    reverse(maximums.begin(), maximums.end());
}


/*
 * Counter-Constructor, creating a new Counter
 * Args:
 *      max (vector<int>) : creating new vector using these values
 */
Counter::Counter(vector<int> max) {
    maximums = vector<int>(max);
    reverse(maximums.begin(), maximums.end());
}


/*
 * Increments the internal counter by one.
 * takes O(1), always.
 */
void Counter::increment() {
    internalCounter++;
}


/*
 * Transforms the internal counter-value to the actually
 * displayed value. Takes O(length of value-array).
 */
string Counter::toString() {
    cache ret;
    ret.current = "";
    ret.count = internalCounter;
    for (uint8_t i = 0; i < maximums.size(); i++) {
        ret = folder(i, ret);
    }
    return ret.current;
}

