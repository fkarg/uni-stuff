// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <algorithm>
#include <vector>

// Runtime comparison of LinkedList and DynamicArray.
int main(int argc, char** argv) {
  if (argc != 2) {
    printf("Usage: ./ArraySumMain <number of items>\n");
    exit(1);
  }
  int n = atoi(argv[1]);

  // Compute the two orders (natural and random).
  printf("\n");
  printf("Compute the two orders (natural and random) ... ");
  std::vector<int> order1(n);
  std::vector<int> order2(n);
  for (int i = 0; i < n; i++) { order1[i] = order2[i] = i; }
  std::random_shuffle(order2.begin(), order2.end());
  printf("done\n");

  // An array containing the numbers 1,...,n.
  std::vector<int> v(n);
  for (int i = 0; i < n; i++) { v[i] = i + 1; }

  printf("\n");
  for (int run = 1; run <= 3; run++) {
    printf("Adding the numbers in natural order ... ");
    int sum = 0;
    clock_t startTime = clock();
    for (int i = 0; i < n; i++) { sum += v[order1[i]]; }
    clock_t endTime = clock();
    printf("done in %zu ms, sum = %d\n",
        1000 * (endTime - startTime) / CLOCKS_PER_SEC, sum);
  }
  printf("\n");

  for (int run = 1; run <= 3; run++) {
    printf("Adding the numbers in random order ... ");
    int sum = 0;
    clock_t startTime = clock();
    for (int i = 0; i < n; i++) { sum += v[order2[i]]; }
    clock_t endTime = clock();
    printf("done in %zu ms, sum = %d\n",
        1000 * (endTime - startTime) / CLOCKS_PER_SEC, sum);
  }
  printf("\n");
}
