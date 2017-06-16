// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <vector>
#include <list>

// Runtime comparison of LinkedList and DynamicArray.
int main(int argc, char** argv) {
  if (argc != 2) {
    printf("Usage: ./ListVersusArrayMain <number of items>\n");
    exit(1);
  }
  int n = atoi(argv[1]);

  printf("\n");
  for (int run = 1; run <= 3; run++) {
    printf("Appending %d elements to std::vector ... ", n);
    std::vector<int> v;
    clock_t startTime = clock();
    for (int i = 0; i < n; i++) { v.push_back(i); }
    clock_t endTime = clock();
    printf("done in %zu ms\n", 1000 * (endTime - startTime) / CLOCKS_PER_SEC);
  }
  printf("\n");

  for (int run = 1; run <= 3; run++) {
    printf("Appending %d elements to std::list ... ", n);
    std::list<int> l;
    clock_t startTime = clock();
    for (int i = 0; i < n; i++) { l.push_back(i); }
    clock_t endTime = clock();
    printf("done in %zu ms\n", 1000 * (endTime - startTime) / CLOCKS_PER_SEC);
  }
  printf("\n");
}
