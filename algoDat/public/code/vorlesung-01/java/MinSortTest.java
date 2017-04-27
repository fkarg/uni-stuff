// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Axel Lehmann <lehmann@cs.uni-freiburg.de>

import org.junit.Test;
import org.junit.Assert;
import java.util.Arrays;

/**
 * Test class for the MinSort implementation.
 * 
 */
public class MinSortTest {

  /**
   * Test the sort method.
   */
  @Test
  public void testMinSort() {
    int[] v1 = {8, 7, 6, 5, 4, 3, 2, 1};
    MinSort.sort(v1);
    Assert.assertEquals("[1, 2, 3, 4, 5, 6, 7, 8]", Arrays.toString(v1));

    int[] v2 = new int[0];
    MinSort.sort(v2);
    Assert.assertEquals("[]", Arrays.toString(v2));
  }
}
