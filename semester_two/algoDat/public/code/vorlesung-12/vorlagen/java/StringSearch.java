/**
 * Copyright 2017, University of Freiburg,
 * Chair of Algorithms and Data Structures.
 * Author: Axel Lehmann <lehmann@cs.uni-freiburg.de>.
 */
import java.util.ArrayList;

/**
 * Collection of string matching functions.
 */
public class StringSearch {

  /**
   * Number of comparisons needed.
   */
  protected int numComparisons;

  /**
   * The shifts for KMP.
   */
  protected int[] shifts;

  /**
   * Construct an empty instance of StringSearch.
   */
  public StringSearch() {
    numComparisons = 0;
    shifts = new int[0];
  }

  /**
   * Find all matches of the given pattern in the given text using the naive
   * algorithm.
   */
  public ArrayList<Integer> findMatchesNaive(String text, String pattern) {
    numComparisons = 0;
    ArrayList<Integer> matches = new ArrayList<>();
    if (pattern.length() == 0 || pattern.length() > text.length()) {
      return matches;
    }

    int i = 0;
    while (i < text.length() - pattern.length() + 1) {
      // Check if pattern matches at position i in text.
      int j = 0;
      while (j < pattern.length()) {
        numComparisons++;
        if (pattern.charAt(j) != text.charAt(i + j)) {
          break;
        }
        j++;
      }
      // If loop went to end, pattern matched at position i.
      if (j == pattern.length()) {
        matches.add(i);
      }
      i++;
    }
    return matches;
  }

  /**
   * Find all matches of the given pattern in the given text using KMP.
   */
  public ArrayList<Integer> findMatchesKmp(String text, String pattern) {
    numComparisons = 0;
    ArrayList<Integer> matches = new ArrayList<>();
    computeShiftsKmp(pattern);
    if (pattern.length() == 0 || pattern.length() > text.length()) {
      return matches;
    }

    int i = 0;
    int shift = 0;
    while (i < text.length() - pattern.length() + 1) {
      // Check if pattern matches at position i in text.
      int j = shift;
      while (j < pattern.length()) {
        numComparisons++;
        if (pattern.charAt(j) != text.charAt(i + j)) {
          break;
        }
        j++;
      }
      // If loop went to end, pattern matched at position i.
      if (j == pattern.length()) {
        matches.add(i);
      }
      // Here is the only difference to the naive algorithm.
      shift = j > 0 ? shifts[j - 1] : 0;
      i = j > 0 ? i + j - shift : i + 1;
    }
    return matches;
  }

  /**
   * Precompute shifts for KMP.
   */
  public void computeShiftsKmp(String pattern) {
    shifts = new int[pattern.length()];
    if (pattern.length() < 1) {
      return;
    }
    shifts[0] = 0;
    for (int j = 1; j < pattern.length(); j++) {
      int k = shifts[j - 1];
      if (pattern.charAt(j) == pattern.charAt(k)) {
        shifts[j] = k + 1;
      } else if (pattern.charAt(j) == pattern.charAt(0)) {
        shifts[j] = 1;
      } else {
        shifts[j] = 0;
      }
    }
  }
}
