package blockworld;

import org.junit.Test;

import java.util.Collections;
import java.util.List;

import static org.junit.Assert.*;

public class BlockWorldExampleTest {

    @Test
    public void getXcoord() {
        Block block = new Block(3, 4, 2, '…');
        assertEquals(3, block.getXcoord());
    }

    @Test
    public void getYcoord() {
    }

    @Test
    public void draw() {
        Block block = new Block(0, 0, 1, '—');
        assertArrayEquals(new char[][]{ new char[]{ '—', '.'}},
                          block.draw(new char[][]{ new char[]{'.', '.'}}));
    }

    @Test
    public void setMaxheight() {
        Block block = new Block(3, 4, 2, '#');
        block.setMaxheight(12);
        for (int i = 0; i < 14; i++) {
            block.step();
        }
        assertEquals(11, block.getYcoord());

    }

    @Test
    public void testMinimalWorld() {
        List<Block> bs = Collections.singletonList(new Block (0, 0, 1, 'x'));
        BlockWorld w = new BlockWorld(1, 2, bs, '.');
        assertFalse(w.isDead());
        assertArrayEquals(new char[][]{ new char[]{ 'x', '.'}}, w.observe());
        w.step();
        assertTrue(w.isDead());
        assertArrayEquals(new char[][]{ new char[]{ '.', 'x'}}, w.observe());
    }

    @Test(expected = IllegalArgumentException.class)
    public void testFailingBlockConstruction() {
        new Block(-1, 0, 1, 'x');
    }

}