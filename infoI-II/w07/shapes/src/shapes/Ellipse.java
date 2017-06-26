package shapes;

/**
 * Author Felix Karg, written 2017-06-19.
 */
public class Ellipse implements Shape {

    private V2 center;
    private V2 radii;

    // creating a new Ellipse at @center with @radii in each direction
    public Ellipse(V2 center, V2 radii) {
        this.center = center;
        this.radii = radii;
    }

    @Override
    public boolean contains(V2 point) {
        double x1 = (point.getX() - center.getX()) * (point.getX() - center.getX());
        double y1 = (point.getY() - center.getY()) * (point.getY() - center.getY());
        return x1 / (radii.getX() * radii.getX()) + y1 / (radii.getY() * radii.getY()) <= 1;
    }

    @Override
    public Shape move(V2 displacement) {
        return new Ellipse(V2.add(center, displacement), radii);
    }

    @Override
    public Box boundingBox() {
        return new Box(V2.add(center, V2.negate(radii)), V2.scale(radii, 2));
    }
}
