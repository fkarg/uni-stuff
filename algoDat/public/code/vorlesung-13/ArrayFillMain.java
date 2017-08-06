// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>.

import java.util.ArrayList;

/**
 * A simple profiling task.
 */
public class ArrayFillMain {

  public static void main(String[] args) {
    int n = 1000 * 1000;
    System.out.println();
    for (int run = 0; run < 3; run++) {
      System.out.print("Filling java.util.ArrayList with 1M integers ... ");
      long startTime = System.currentTimeMillis();
      ArrayList<Integer> array = new ArrayList<Integer>(n);
      for (int i = 0; i < n; i++) {
        array.add(i);
      }
      long endTime = System.currentTimeMillis();
      System.out.println("done in " + (endTime - startTime) + "ms");
    }
    System.out.println();
    for (int run = 0; run < 3; run++) {
      System.out.print("Filling Java native array with 1M integers ... ");
      long startTime = System.currentTimeMillis();
      int[] array = new int[n];
      for (int i = 0; i < n; i++) {
        array[i] = i;
      }
      long endTime = System.currentTimeMillis();
      System.out.println("done in " + (endTime - startTime) + "ms");
    }
    System.out.println();
  }
}
