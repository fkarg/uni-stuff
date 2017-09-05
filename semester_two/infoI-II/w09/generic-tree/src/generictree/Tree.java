package generictree;

/**
 * Author Felix Karg, written 2017-07-03.
 */
public interface Tree<C extends Comparable> {

    /**
     * Adding this element to the Tree
     * @param i The element to be added (has to be Comparable)
     * @return a new Tree containing this element
     */
    public Tree<C> add(C i);

    /**
     * @param i the (Comparable) element to be checked for
     * @return if this element is contained
     */
    public boolean contains (C i);

    /**
     * @return The size of the Tree
     */
    public int size();

    /**
     * @return The elements listed as a nice String
     */
    public String elementsAsString();
}
