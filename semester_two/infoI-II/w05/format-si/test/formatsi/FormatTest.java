package formatsi;

import org.junit.Test;

import static org.junit.Assert.*;

public class FormatTest {

    @Test
    public void formatSIFailing() throws Exception {
        assertEquals("1.0g", Format.formatSI(1.0, "g"));
    }

    @Test
    public void testSIZero() throws Exception {
        assertEquals("0.0Cd", Format.formatSI(0.0, "Cd"));
    }

    @Test
    public void testBiggerNoSymbol() throws Exception {
        assertEquals("30.0N", Format.formatSI(30.0, "N"));
    }

    @Test
    public void testBiggerSymbol() throws Exception {
        assertEquals("3.0kp", Format.formatSI(3000.0, "p"));
    }

    @Test
    public void testSmaller() throws Exception {
        assertEquals("400.0mH", Format.formatSI(0.4, "H"));
    }

    @Test
    public void testNoFitTrue() throws Exception {
        assertEquals("7.000E+28J", Format.formatSI(7e28, "J"));
    }

    @Test
    public void testNoFitFalse() throws Exception {
        assertEquals("9.109E-31kg", Format.formatSI(9.109e-31, "kg"));
    }
}
