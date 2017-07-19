package generictree;


/**
 * Author Felix Karg, written 2017-07-03.
 */
public class Trees<C extends Comparable> implements Tree<C> {

    private C elem;
    private boolean got = false;
    private Tree<C> left = null;
    private Tree<C> right = null;

    /**
     * creates a new Tree with these elements
     * @param elements The elements to be included (have to be Comparable)
     * @return a Tree containing these elements
     */
    public static <C extends Comparable<C>> Tree makeTree(C[] elements) {

        Tree<C> tree = new Trees<>();

        for (C element : elements) {
            tree = tree.add(element);
        }

        return tree;
    }


    /**
     * Empty constructor, creating Leaf-Node
     */
    public Trees() {}

    /**
     * Singleton-Constructor
     * @param elem The element to be in this singleton
     */
    public Trees(C elem) {
        this.elem = elem;
        this.got = true;
        left = new Trees<>();
        right = new Trees<>();
    }

    /**
     * Multi-Constructor used in add
     * @param elem The element to be at the top level
     * @param left the new left tree
     * @param right the new right tree
     */
    public Trees(C elem, Tree<C> left, Tree<C> right) {
        this.elem = elem;
        this.got = true;
        this.left = left;
        this.right = right;
    }

    @Override
    @SuppressWarnings("unchecked") // this is valid because both i and elem are comparable
    public Tree<C> add(C i) {
        if (!got) return new Trees<C>(i);
        if (i.compareTo(elem) < 0) {
            return new Trees<C>(elem, left.add(i), right);
        }
        if (i.compareTo(elem) > 0) {
            return new Trees<C>(elem, left, right.add(i));
        }
        return this;
    }

    @Override
    @SuppressWarnings("unchecked") // this is valid because both i and elem are comparable
    public boolean contains(C i) {
        return got && (i.compareTo(elem) == 0 ||
                (i.compareTo(elem) < 0 && left.contains(i)) ||
                (i.compareTo(elem) > 0 && right.contains(i)));
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