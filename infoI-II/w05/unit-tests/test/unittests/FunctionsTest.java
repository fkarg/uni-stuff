package unittests;

import org.junit.Test;

import static org.junit.Assert.*;

public class FunctionsTest {
    @Test
    public void turbineControl() throws Exception {
        assertEquals("DISCONNECT", Functions.turbineControl(48.3));
        assertEquals("DISCONNECT", Functions.turbineControl(55.7));
        assertEquals("LESS_WATER", Functions.turbineControl(50.5));
        assertEquals("MORE_WATER", Functions.turbineControl(49.3));
        assertEquals("STEADY", Functions.turbineControl(50.0));
    }

}
