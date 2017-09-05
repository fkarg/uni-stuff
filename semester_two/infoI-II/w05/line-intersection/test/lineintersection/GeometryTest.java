package lineintersection;

import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class GeometryTest {
    @Test
    public void lineIntersection() throws Exception {
        double a1, a2, b1, b2;

        a1 = 5; a2 = 7; b1 = 13; b2 = 21;
        assertTrue(checkIntersection(Geometry.lineIntersection(a1, b1, a2, b2),
                a1, b1, a2, b2, 0.002, 0.002));

        a1 = -3; a2 = -3; b1 = 3; b2 = 5;
        assertTrue(checkIntersection(Geometry.lineIntersection(a1, b1, a2, b2),
                a1, b1, a2, b2, 0.002, 0.002));
    }

    public boolean checkIntersection(double[] resultPoint,
                                     double a1, double b1,
                                     double a2, double b2,
                                     double dX, double dY) {

        if (resultPoint == null) {
            // checking if they really were parrallel
            return a1 == a2;
        } else {
            // checking if the x and y-values are within the given deltas
            return Math.abs(a1 * resultPoint[0] + b1 - resultPoint[1]) < dY &&
                    Math.abs(a2 * resultPoint[0] + b2 - resultPoint[1]) < dY &&
                    Math.abs((resultPoint[1] - b1) / a1 - resultPoint[0]) < dX &&
                    Math.abs((resultPoint[1] - b2) / a2 - resultPoint[0]) < dX;
        }
    }


}
