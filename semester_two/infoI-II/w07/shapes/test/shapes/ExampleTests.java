package shapes;

import org.junit.Test;

import java.util.Arrays;

import static org.junit.Assert.*;

public class ExampleTests {

    @Test
    public void testVec() {
        V2 v1 = new V2(0, 0);
        V2 v2 = new V2(3, 4);
        assertEquals(v1, V2.specialMax(v1, v2, true));
        assertEquals(v2, V2.specialMax(v1, v2, false));
    }

    @Test
    public void testBox() {
        Box b1 = new Box(new V2(0, 0), new V2(1, 1));
        Box b2 = new Box(new V2(2, 2), new V2(1, 2));
        Box b3 = new Box(new V2(0, 0), new V2(3, 4));
        V2 point = new V2(0.5, 3);
        assertTrue(b3.equals(Box.enhance(b1, b2)));
        assertTrue(b3.contains(point));
    }

    @Test
    public void testRectangle() {
        assertTrue(new Rectangle(new V2(-1.0, 2.0),
                new V2(3.0, 4.0))
                .contains(new V2(-0.5, 3.5)));
    }

    @org.junit.Test
    public void testEllipse() {
        Shape e = Shapes.makeEllipse(new V2(0, 0), new V2(1, 2));
        V2 p1 = new V2(0.5, 1);
        V2 p2 = new V2(1,1);
        assertTrue(e.contains(p1));
        assertFalse(e.contains(p2));

        assertFalse(e.move(new V2(-2, 0))
                .contains(p1));
    }

    @org.junit.Test
    public void testPicture() {
        Shape e = Shapes.makeEllipse(new V2(0, 0), new V2(2, 1));
        Shape r = Shapes.makeRectangle(new V2(0,2), new V2(1, 2));
        V2 p1 = new V2(0.5, 1);
        V2 p2 = new V2(1,1);

        Shape pict = Shapes.makePicture(Arrays.asList(e, r));

        assertTrue(pict.contains(p1));
        assertTrue(pict.contains(p2));
        assertFalse(pict.contains(new V2(2, 0.5)));

    }

}