package undoarray;

/**
 * Author Felix Karg, written 2017-07-20.
 */
public class Tuple<X, Y> {
    public final X fst;
    public final Y snd;

    /**
     * A simple Tuple implementation, as Java does not have one by itself.
     * @param x First argument
     * @param y Second argument
     */
    public Tuple(X x, Y y) {
        fst = x;
        snd = y;
    }
}
