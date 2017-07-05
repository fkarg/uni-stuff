package searchtree;


/**
 * Author Felix Karg, written 2017-06-26.
 */
public class Trees implements Tree {

    private int elem;
    private boolean got = false;
    private Tree left = null;
    private Tree right = null;

    /**
     * creates a new Tree with these elements
     * @param elements The elements to be included
     * @returns a Tree containing these elements
     */
    public static Tree makeTree(int[] elements) {

        Tree tree = new Trees();

        for (int element : elements) {
            tree = tree.add(element);
        }

        return tree;
    }

    /**
     * Empty constructor
     */
    public Trees() {}

    /**
     * Singleton-Constructor
     * @param elem The element to be there
     */
    public Trees(int elem) {
        this.elem = elem;
        this.got = true;
        left = new Trees();
        right = new Trees();
    }

    /**
     * Multi-Constructor used in add
     * @param elem The element to be at the top level
     * @param left the new left tree
     * @param right the new right tree
     */
    public Trees(int elem, Tree left, Tree right) {
        this.elem = elem;
        this.got = true;
        this.left = left;
        this.right = right;
    }

    @Override
    public Tree add(int i) {
        if (!got) return new Trees(i);
        if (i < elem) {
            return new Trees(elem, left.add(i), right);
        }
        if (i > elem) {
            return new Trees(elem, left, right.add(i));
        }
        return this;
    }

    @Override
    public boolean contains(int i) {
        if (!got) return false;
        return i == elem ||
                (i < elem && left.contains(i)) ||
                (i > elem && right.contains(i));
    }

    @Override
    public int size() {
        if (!got) return 0;
        return 1 + left.size() + right.size();
    }

    @Override
    public String elementsAsString() {
        if (!got) return "";
        String r = right.elementsAsString();
        String l = left.elementsAsString();
        String ret = "";
        if (l.length() > 0) {
            ret = l + ", ";
        }
        ret += elem;
        if (r.length() > 0) {
            ret += ", " + r;
        }
        return ret;
    }
}