package undoarray;

import org.junit.Test;

import java.util.Arrays;

import static org.junit.Assert.*;

public class ExampleTests {

    @Test
    public void testPut() {
        UndoArray<String> arr = new UndoArray<>("", 3, 5);
        arr.put(0, "Hello");
        arr.put(1, "World");

        assertEquals(Arrays.asList("Hello", "World", ""), arr.get());
    }

    @Test
    public void testUndo() {
        UndoArray<String> arr = new UndoArray<>("", 3, 2);
        arr.put(0, "Hello");
        arr.put(1, "World");
        arr.put(2, "!");

        assertEquals(Arrays.asList("Hello", "World", "!"), arr.get());

        assertTrue(arr.undo());
        assertTrue(arr.undo());
        assertFalse(arr.undo());

        assertEquals(Arrays.asList("Hello", "", ""), arr.get());
    }

    @Test
    public void testUndo2() {
        UndoArray<String> arr = new UndoArray<>("", 2, 2);
        arr.put(0, "Hello");
        arr.put(1, "World!");
        arr.put(1, "Welt!");

        assertEquals(Arrays.asList("Hello", "Welt!"), arr.get());

        assertTrue(arr.undo());

        assertEquals(Arrays.asList("Hello", "World!"), arr.get());
    }

    @Test
    public void testUndo3() {
        UndoArray<String> arr = new UndoArray<>("", 2, 10);
        arr.put(0, "Hello");
        arr.put(1, "World!");
        arr.put(1, "Welt!");

        assertEquals(Arrays.asList("Hello", "Welt!"), arr.get());

        assertTrue(arr.undo());
        assertEquals(Arrays.asList("Hello", "World!"), arr.get());

        arr.put(1, "!");
        assertTrue(arr.undo());
        assertEquals(Arrays.asList("Hello", "World!"), arr.get());

        assertTrue(arr.undo());

        assertTrue(arr.undo());

        assertEquals(Arrays.asList("", ""), arr.get());
    }

    @Test
    public void testTooMuchToUndo() {
        // Testing if the history size is really only this big
        UndoArray<String> arr = new UndoArray<>("", 2, 2);
        arr.put(0, "Hello");
        arr.put(1, "World!");
        arr.put(1, "Welt!");

        assertEquals(Arrays.asList("Hello", "Welt!"), arr.get());

        assertTrue(arr.undo());
        assertEquals(Arrays.asList("Hello", "World!"), arr.get());

        arr.put(1, "!");
        assertTrue(arr.undo());
        assertEquals(Arrays.asList("Hello", "World!"), arr.get());

        assertTrue(arr.undo());

        assertFalse(arr.undo());

        assertEquals(Arrays.asList("Hello", ""), arr.get());
    }

}