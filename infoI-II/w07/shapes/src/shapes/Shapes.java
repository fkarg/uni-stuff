package shapes;

import java.util.List;

/**
 * Author Felix Karg, written 2017-06-19.
 * Modified by Felix Karg on 2017-06-19
 */
public class Shapes {

    // creating a new Ellipse and returning it
    public static Shape makeEllipse(V2 center, V2 radii) {
        return new Ellipse(center, radii);
    }

    // creating a new Rectangle and returning it
    public static Shape makeRectangle(V2 upperLeftCorner, V2 dimension) {
        return new Rectangle(upperLeftCorner, dimension);
    }

    // creating a new Picture and returning it
    public static Shape makePicture(List<Shape> shapes) {
        return new Picture(shapes);
    }

}
