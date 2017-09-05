package shapes;

import java.util.ArrayList;
import java.util.List;

/**
 * Author Felix Karg, written 2017-06-20.
 */
public class Picture implements Shape {

    private List<Shape> shapes;
    private Box bounding;

    public Picture(List<Shape> shapes) {
        // creating the initial boundingBox
        bounding = shapes.get(0).boundingBox();

        // setting the local shapes
        this.shapes = new ArrayList<>(shapes);

        // updating the boundingBox for all the elements
        for (Shape shape : shapes) {
            bounding = Box.enhance(bounding, shape.boundingBox());
        }
    }

    @Override
    public boolean contains(V2 point) {
        for (Shape shape : shapes)
            if (shape.contains(point))
                return true;
        return false;
    }

    @Override
    public Shape move(V2 displacement) {
        shapes.forEach(shape -> shape.move(displacement));
        return bounding.move(displacement);
    }

    @Override
    public Box boundingBox() {
        return bounding;
    }
}
