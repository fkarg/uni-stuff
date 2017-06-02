package subsequence;


import org.junit.Test;

import static org.junit.Assert.*;
import static subsequence.PartialOrdering.*;

/**
 * Created by thiemann on 21.05.17.
 */
public class MainTest {
    @Test
    public void subsequenceCompare() {
        assertEquals(PartialOrdering.EQUAL, Main.subsequenceCompare("Test", "Test"));
        assertEquals(PartialOrdering.INCOMPARABLE, Main.subsequenceCompare("Hello World", "World Hello"));
        assertEquals(PartialOrdering.GREATER, Main.subsequenceCompare("Hello World", "eloWrld"));
        assertEquals(PartialOrdering.LESS, Main.subsequenceCompare("tere", "hi there"));
    }

}
