// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

#include <iostream>

// Class for a dynamic array of ints.
class DynamicArray {
 public:
  // Create an empty array.
  DynamicArray() {
    _elements = new int[1];
    _size = 0;
    _capacity = 1;
  }

  // Append an element to the end of the array.
  void pushBack(int x) {
    // if (_size + 1 > _capacity) change_capacity(_capacity + 1000);
    if (_size + 1 > _capacity) change_capacity(2 * _capacity);
    _elements[_size] = x;
    _size += 1;
  }

  // Remove an element from the end of the array.
  void popBack() {
    _size -= 1;
    if (_size < _capacity / 4) change_capacity(_capacity / 2);
  }

  // Allocate space for more elements.
  void change_capacity(int new_capacity) {
    std::cout << "Capacity change: " << _capacity << " -> " << new_capacity
              << std::endl;
    int* new_elements = new int[new_capacity];
    for (int i = 0; i < _size; i++) { new_elements[i] = _elements[i]; }
    delete[] _elements;
    _elements = new_elements;
    _capacity = new_capacity;
  }

  // The fixed-size array containing the elements.
  int* _elements;
  // The number of elements stored in the fixed-size array. This is NOT the size
  // of he underlying fixed-size array (it can be larger, so that we can
  // accomodate new elements without having to reallocate every time).
  int _size;
  // The size of the fixed-size array = the maximum number of elements that can
  // be stored = usually called the capacity.
  int _capacity;
};
