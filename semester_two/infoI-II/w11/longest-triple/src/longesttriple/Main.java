package longesttriple;

import java.util.List;

/**
 * Author Felix Karg, written 2017-07-25.
 */
public class Main {

    /**
     * This function returns the longest triple of adjacent strings in this list.
     * @param strings The list of strings to be searched through
     * @return The Triple of longest strings, if the list is long enough.
     */
    public static Triple longestTriple(List<String> strings) {
        if (strings.size() < 3) {
            throw new IllegalArgumentException("too little strings");
        }
        Triple max = new Triple(strings.get(0), strings.get(1), strings.get(2));

        for (int i = 1; i < strings.size() - 2; i++) {
            Triple tmp = new Triple(strings.get(i), strings.get(i + 1), strings.get(i + 2));
            if (tmp.totalLen() > max.totalLen()) {
                max = tmp;
            }
        }

        return max;
    }
}
