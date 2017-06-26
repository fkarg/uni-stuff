package shapes;

/**
 * Author Felix Karg, written 2017-06-19.
 */
public class Rectangle implements Shape {

    private V2 upperLeft;
    private V2 dimension;

    // creating a new Rectangle at @upperLeft with @dimension
    public Rectangle(V2 upperLeft, V2 dimension) {

        if (dimension.getX() < 0 || dimension.getY() < 0)
            throw new IllegalArgumentException("dimension must be > 0 in both directions!");

        this.upperLeft = upperLeft;
        this.dimension = dimension;
    }

    @Override
    public boolean contains(V2 point) {
        return boundingBox().contains(point);
    }

    @Override
    public Shape move(V2 displacement) {
        return new Rectangle(V2.add(upperLeft, displacement), dimension);
    }

    @Override
    public Box boundingBox() {
        return new Box(upperLeft, dimension);
    }
}
