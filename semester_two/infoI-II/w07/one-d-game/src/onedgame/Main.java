package onedgame;

import java.util.Arrays;

/**
 * Author Felix Karg, written 2017-06-19.
 */
public class Main {

    public static boolean isWinnable(int m, boolean[] game) {

        if (game.length <= 0 || game[0])
            throw new IllegalArgumentException("first filed is not allowed to be true!");

        // look at what tiles are actually reachable at all
        boolean[] isreachable = new boolean[game.length];

        isreachable[0] = true;

        try {
            if (!game[m]) isreachable[m] = true;
            for (int i = 1; i < game.length - 1; i++) {
                if (isreachable[i + 1] && !game[i]) isreachable[i] = true;
                if (isreachable[i - 1] && !game[i]) isreachable[i] = true;
                if (isreachable[i] && !game[i + 1]) isreachable[i + 1] = true;
                if (isreachable[i] && !game[i - 1]) isreachable[i - 1] = true;
                if (isreachable[i] && !game[i + m]) isreachable[i + m] = true;
            }
        } catch (IndexOutOfBoundsException e) {
            // we safely reached a place way to the right
            return true;
        }

        // this is only the final one that's explicitly reachable
        if (isreachable[game.length - m - 1]) isreachable[game.length - 1] = true;

        return isreachable[game.length - 1];
    }
}
