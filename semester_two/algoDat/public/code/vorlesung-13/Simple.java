// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

/**
 * Main function.
 */
public class Simple {

  static int diff(int a, int b) {
    return a - b;
  }

  public static void main(String[] args) {
    int c = 0;
    int a = 137;
    int b = 42;
    int n = Integer.parseInt(args[0]);
    for (int i = 0; i < n; i++) {
      c += diff(a, b);
    }
  }
}
