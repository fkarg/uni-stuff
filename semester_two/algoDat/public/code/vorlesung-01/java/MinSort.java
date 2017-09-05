// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Axel Lehmann <lehmann@cs.uni-freiburg.de>

/**
 * Class for MinSort algorithm.
 */
public class MinSort {

  /**
   * MinSort implementation.
   */
  public static void sort(int[] v) {
    for (int i = 0; i + 1 < v.length; i++) {
      // Find minimum in v[i, ..., n-1].
      int minValue = v[i];
      int minIndex = i;
      for (int j = i + 1; j < v.length; j++) {
        if (v[j] < minValue) {
          minValue = v[j];
          minIndex = j;
        }
      }
      // Swap minimum to front.
      v[minIndex] = v[i];
      v[i] = minValue;
    }
  }
}
