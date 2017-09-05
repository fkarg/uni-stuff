package shapes;

/**
 * A class for a box in a cartesian coordinate system
 * Created by thiemann on 11.06.17.
 */
public class Box implements Shape {
    private final V2 upperLeftCorner;
    private final V2 dimensions;

    /**
     * A box is defined by its upper left corner and its dimensions.
     * Dimensions have to be positive.
     *
     * As we are in cartesian coordinates, a box with upper left corner (0,0)
     * and dimensions (1,1) has a lower right corner of (-1, -1).
     */
    public Box(V2 upperLeftCorner, V2 dimensions) {
        if (dimensions.getY() < 0 || dimensions.getY() < 0) {
            throw new IllegalArgumentException("Bad dimensions: " + dimensions);
        }
        this.upperLeftCorner = upperLeftCorner;
        this.dimensions = dimensions;
    }

    /**
     * @return The upper left corner of this boundingBox
     */
    public V2 getUpperLeftCorner() {
        return upperLeftCorner;
    }

    /**
     * @return The dimension of this boundingBox
     */
    public V2 getDimensions() {
        return dimensions;
    }

    /**
     * @return The lower right corner of this boundingBox
     */
    public V2 getLowerRight() { return V2.add(upperLeftCorner, dimensions); }

    /**
     * Combines the two boxes and returns one including both
     * @param base The base box to be expanded
     * @param addition The box by which to expand
     * @return The new expanded (possibly bigger) box
     */
    public static Box enhance(Box base, Box addition) {
        V2 upL = V2.specialMax(base.getUpperLeftCorner(), addition.getUpperLeftCorner(), true);
        V2 loR = V2.specialMax(base.getLowerRight(), addition.getLowerRight(), false);
        return new Box(upL, V2.add(loR, V2.negate(upL)));
    }

    @Override
    public boolean contains(V2 point) {
        return point.getX() >= upperLeftCorner.getX() &&
                point.getX() <= upperLeftCorner.getX() + dimensions.getX() &&
                point.getY() >= upperLeftCorner.getY() &&
                point.getY() <= upperLeftCorner.getY() + dimensions.getY();
    }

    @Override
    public Shape move(V2 displacement) {
        return new Box(V2.add(upperLeftCorner, displacement), dimensions);
    }

    @Override
    public Box boundingBox() {
        return this;
    }

    @Override
    public String toString() {
        return "Box at " + upperLeftCorner + " with dim " + dimensions;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null) return false;
        if (!(o instanceof Shape)) return false;
        Box b = (Box) o;
        return this.upperLeftCorner.equals(b.getUpperLeftCorner()) &&
                this.dimensions.equals(b.getDimensions());
    }
}
