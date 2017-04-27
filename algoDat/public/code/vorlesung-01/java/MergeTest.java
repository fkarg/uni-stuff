// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Axel Lehmann <lehmann@cs.uni-freiburg.de>
//         Hannah Bast <bast@cs.uni-freiburg.de>

import org.junit.Test;
import org.junit.Assert;
import java.util.Arrays;

/**
 * Test for the merge algorithm.
 */
public class MergeTest {

  @Test
  public void testMerge() {
    int[] a1 = Merge.merge(new int[]{2, 4, 6, 8}, new int[]{1, 2, 5, 7});
    Assert.assertEquals("[1, 2, 2, 4, 5, 6, 7, 8]", Arrays.toString(a1));

    int[] a2 = Merge.merge(new int[]{}, new int[]{1, 3, 5, 7});
    Assert.assertEquals("[1, 3, 5, 7]", Arrays.toString(a2));

    int[] a3 = Merge.merge(new int[]{2, 4, 6, 8}, new int[]{});
    Assert.assertEquals("[2, 4, 6, 8]", Arrays.toString(a3));
  }
}
