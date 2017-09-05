package shapeserror;

import org.junit.Test;

/**
 * Author Felix Karg, written 2017-07-13.
 */
public class Tests {

    @Test
    public void good() {
        // Should not Succeed:
        Box box = new Box(new V2(5, 4), new V2(-15, 10));
    }

    @Test
    public void bad() {
        // Failing:
        Box2 box = new Box2(new V2(5, 4), new V2(-15, 10));
    }
}
