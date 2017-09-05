package searchtree;

/**
 * Author Felix Karg, written 2017-06-26.
 */
public interface Tree {

    /**
     * Adding this element to the Tree
     * @param i The element to be added
     * @return a new Tree containing this element
     */
    public Tree add(int i);

    /**
     * @param i the element to be checked for
     * @return if this element is contained
     */
    public boolean contains (int i);

    /**
     * @return The size of the Tree
     */
    public int size();

    /**
     * @return The elements listed as a nice String
     */
    public String elementsAsString();
}
