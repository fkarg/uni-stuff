package longesttriple;

import org.junit.Test;

import java.util.Arrays;

import static org.junit.Assert.*;

public class ExampleTests {

    @Test
    public void tripleTest() {
       assertEquals(new Triple("bb", "c", "dd"),
                    Main.longestTriple(Arrays.asList("a", "bb", "c", "dd")));
    }


    @Test(expected = IllegalArgumentException.class)
    public void failtest() {
        Main.longestTriple(Arrays.asList("a", "b"));
    }

    @Test
    public void sndlongest() {
        assertEquals(new Triple("bb", "c", "ddd"),
                Main.longestTriple(Arrays.asList("a", "bb", "c", "ddd", "e", "ff", "gg")));
    }

}