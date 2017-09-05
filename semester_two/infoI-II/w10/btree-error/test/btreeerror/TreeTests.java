package btreeerror;

import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Author Felix Karg, written 2017-07-13.
 */
public class TreeTests {

    @Test
    public void bad() {
        BTree tree = new Branch(new Leaf(1), new Branch(new Leaf(2), new Leaf(3)));
        assertEquals(2, tree.height());
    }

    @Test
    public void good() {
        BTree tree = new Branch2(new Leaf(1), new Branch2(new Leaf(2), new Leaf(3)));
        assertEquals(2, tree.height());
    }
}
