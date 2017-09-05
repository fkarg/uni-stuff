package onedgame;

import org.junit.Test;

import static org.junit.Assert.*;

public class TestExamples {

    @Test
    public void testWinning1() {
        assertTrue(Main.isWinnable(3, new boolean[]{false,
                                                    false,
                                                    false,
                                                    true,
                                                    true ,
                                                    true}));
        assertTrue(Main.isWinnable(8, new boolean[]{false,
                false, true, true, false, true, false, true}));
    }

    @Test
    public void testLoosing1() {
        assertFalse(Main.isWinnable(3, new boolean[]{false,
                                                     false,
                                                     true,
                                                     true ,
                                                     true,
                                                     false}));

    }

}