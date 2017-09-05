// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

// A simple program to show some machine code.
int main(int argc, char** argv) {
  int a = 137;
  int b = 42;
  int c = 0;
  for (int i = 0; i < 100; i++) {
    c += a - b;
  }
  return c;
}
