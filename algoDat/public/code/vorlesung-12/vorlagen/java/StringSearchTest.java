/**
 * Copyright 2017, University of Freiburg,
 * Chair of Algorithms and Data Structures.
 * Author: Axel Lehmann <lehmann@cs.uni-freiburg.de>.
 */
import org.junit.Test;
import org.junit.Assert;
import java.util.Arrays;
import java.util.ArrayList;

/**
 * Test class for the StringSearch class.
 */
public class StringSearchTest {

  /**
   * Test the findMatchesNaive method.
   */
  @Test
  public void testFindMatchesNaive() {
    StringSearch ss = new StringSearch();
    ArrayList<Integer> matches;
    matches = ss.findMatchesNaive("DUBIDUBIDUBADUBIDU", "DUBI");
    Assert.assertEquals("[0, 4, 12]", matches.toString());
    Assert.assertEquals(27, ss.numComparisons);
    matches = ss.findMatchesNaive("DUDUDUDU", "DUDU");
    Assert.assertEquals("[0, 2, 4]", matches.toString());
    Assert.assertEquals(14, ss.numComparisons);
    matches = ss.findMatchesNaive("", "DUDU");
    Assert.assertEquals("[]", matches.toString());
    Assert.assertEquals(0, ss.numComparisons);
    matches = ss.findMatchesNaive("DUDUDUDU", "");
    Assert.assertEquals("[]", matches.toString());
    Assert.assertEquals(0, ss.numComparisons);
  }

  /**
   * Test the findMatchesKmp method.
   */
  @Test
  public void testFindMatchesKmp() {
    StringSearch ss = new StringSearch();
    ArrayList<Integer> matches;
    matches = ss.findMatchesKmp("DUBIDUBIDUBADUBIDU", "DUBI");
    Assert.assertEquals("[0, 4, 12]", matches.toString());
    Assert.assertEquals(17, ss.numComparisons);
    matches = ss.findMatchesKmp("DUDUDUDU", "DUDU");
    Assert.assertEquals("[0, 2, 4]", matches.toString());
    Assert.assertEquals(8, ss.numComparisons);
    matches = ss.findMatchesKmp("", "DUDU");
    Assert.assertEquals("[]", matches.toString());
    Assert.assertEquals(0, ss.numComparisons);
    matches = ss.findMatchesKmp("DUDUDUDU", "");
    Assert.assertEquals("[]", matches.toString());
    Assert.assertEquals(0, ss.numComparisons);
  }

  /**
   * Test the computeShiftsKmp method.
   */
  @Test
  public void testComputeShiftsKmp() {
    StringSearch ss = new StringSearch();
    ss.computeShiftsKmp("DUBIDUBADU");
    Assert.assertEquals("[0, 0, 0, 0, 1, 2, 3, 0, 1, 2]",
      Arrays.toString(ss.shifts));
    ss.computeShiftsKmp("MIMMI");
    Assert.assertEquals("[0, 0, 1, 1, 2]", Arrays.toString(ss.shifts));
    ss.computeShiftsKmp("ABCDEFG");
    Assert.assertEquals("[0, 0, 0, 0, 0, 0, 0]", Arrays.toString(ss.shifts));
    ss.computeShiftsKmp("AAAAAA");
    Assert.assertEquals("[0, 1, 2, 3, 4, 5]", Arrays.toString(ss.shifts));
    ss.computeShiftsKmp("");
    Assert.assertEquals("[]", Arrays.toString(ss.shifts));
  }
}
