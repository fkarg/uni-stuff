// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Axel Lehmann <lehmann@cs.uni-freiburg.de>

/**
 * Timing analysis for minsort.
 */
public class MinSortMain {
  /**
   * @param args
   */
  public static void main(String[] args) {
    for (int n = 5 * 1000; n <= 50 * 1000; n += 2500) {
      int[] v = new int[n];
      for (int i = 0; i < v.length; i++) {
        v[i] = n - 1;
      }

      long start = System.nanoTime();
      MinSort.sort(v);
      long end = System.nanoTime();
      long duration = (end - start) / 1000000;
      System.out.println("" + n + "\t" + duration);
    }
  }
}
