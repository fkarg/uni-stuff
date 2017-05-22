// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

/**
 * Class for the merge algorithm from Vorlesung 1b.
 */
public class Merge {

  /**
   * Merge function.
   */
  public static int[] merge(int[] a1, int[] a2) {
    int n1 = a1.length;
    int n2 = a2.length;
    int i1 = 0;
    int i2 = 0;
    int[] result = new int[n1 + n2];
    int k = 0;
    // while (i1 < n1 || i2 < n2)  {
    while (k < n1 + n2) {
      if (i1 < n1 && (i2 == n2 || a1[i1] <= a2[i2])) {
        result[k] = a1[i1];
        i1++;
        k++;
      }
      if (i2 < n2 && (i1 == n1 || a2[i2] < a1[i1])) {
        result[k] = a2[i2];
        i2++;
        k++;
      }
    }
    return result;
  }
}
