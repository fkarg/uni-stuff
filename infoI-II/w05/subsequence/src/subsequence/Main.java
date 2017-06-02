package subsequence;

/**
 * Created by thiemann on 21.05.17.
 * Modified by karg on 02.06.17.
 */
public class Main {

    /* Tests if two strings are substrings of each other.
    Args:
        s1 (String) : The one string to be compared
        s2 (String) : The other string to be compared
    Returns:
        PartialOrdering
        LESS if s1 is included within s2
        EQUAL if both strings are equal
        GREATER if s2 is included in s1
        INCOMPARABLE if they are not substrings of each other
     */
    public static PartialOrdering subsequenceCompare(String s1, String s2) {
        if (s1.equals(s2)) {
            // if they are equal no further testing is required
            return PartialOrdering.EQUAL;
        }
        // initializing the important values
        int i1 = 0, i2 = 0;
        char current1;
        char current2;

        while (i1 < s1.length() && i2 < s2.length()) {
            current1 = s1.charAt(i1);
            current2 = s2.charAt(i2);

            // getting current characters and checking if they are equal,
            // if yes proceed for both, otherwise just for the 'bigger' string
            // (in this case s1)

            if (current1 == current2) {
                i1++;
                i2++;
            } else {
                i1++;
            }
        }

        if (i1 <= s1.length() && i2 == s2.length()) {
            // all parts of s2 are within s1, so it is greater
            return PartialOrdering.GREATER;
        }

        // resetting the indices
        i1 = 0;
        i2 = 0;

        while (i1 < s1.length() && i2 < s2.length()) {
            current1 = s1.charAt(i1);
            current2 = s2.charAt(i2);

            // getting current characters and checking if they are equal,
            // if yes proceed for both, otherwise just for the 'bigger' string
            // (in this case s2)

            if (current1 == current2) {
                i1++;
                i2++;
            } else {
                i2++;
            }
        }

        if (i1 == s1.length() && i2 <= s2.length()) {
            // all parts of s1 are within s2, so it is smaller
            return PartialOrdering.LESS;
        }

        // both strings include parts not included within the other,
        // so they are not substrings of each other and thus not
        // comparable
        return PartialOrdering.INCOMPARABLE;
    }
}

