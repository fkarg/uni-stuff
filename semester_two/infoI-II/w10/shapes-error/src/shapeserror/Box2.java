package shapeserror;

/**
 * Author Felix Karg, written 2017-07-18.
 */
public class Box2 extends Box {

    /**
     * A box is defined by its lower right corner and its dimensions.
     * Dimensions have to be positive (>= 0).
     *
     * @param lowerRightCorner
     * @param dimensions
     */
    public Box2(V2 lowerRightCorner, V2 dimensions) {
        super(lowerRightCorner, dimensions);
        if (dimensions.getX() < 0) {
            throw new IllegalArgumentException("Bad dimensions: " + dimensions);
        }
    }
}
