package shapes;

/**
 * A two dimensional vector.
 * Created by thiemann on 11.06.17.
 */
public class V2 {
    private final double x;
    private final double y;

    public V2(double x, double y) {
        this.x = x;
        this.y = y;
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public V2 move(V2 displacement) {
        return new V2(
                x + displacement.getX(),
                y + displacement.getY());
    }

    @Override
    public String toString() {
        return "V2{" +
               "x=" + x +
               ", y=" + y +
               '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        V2 v2 = (V2) o;

        return Double.compare(v2.x, x) == 0 && Double.compare(v2.y, y) == 0;

    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        temp = Double.doubleToLongBits(x);
        result = (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(y);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        return result;
    }

    //____________________________________________________________
    // Implementing the Num-Interface for Vectors (2-Tuples ...)

    /**
     * Multiplicating two Vectors
     * @param vec1
     * @param vec2
     * @return those two multiplied
     */
    public static V2 mult(V2 vec1, V2 vec2) {
        return new V2 (vec1.getX() * vec2.getX(),
                       vec1.getY() * vec2.getY());
    }

    /**
     * Negating the given Vector
     * @param vec
     * @return a negated @vec
     */
    public static V2 negate(V2 vec) {
        return new V2(-vec.getX(), -vec.getY());
    }

    /**
     * Adding the two Vectors
     * @param vec1
     * @param vec2
     * @return those two added
     */
    public static V2 add(V2 vec1, V2 vec2) {
        return new V2(vec1.getX() + vec2.getX(),
                      vec1.getY() + vec2.getY());
    }

    /**
     * Scaling up this vector
     * @param vec the vector to be scaled
     * @param n the factor by which to scale
     * @return the scaled vector
     */
    public static V2 scale(V2 vec, int n) {
        return new V2(vec.getX() * n,
                      vec.getY() * n);
    }

    /**
     * returning the absolute vaule of this vector
     * @param vec the value to get the absolute value from
     * @return the absolute value of this vector (Num-speaking)
     */
    public static double abs(V2 vec) {
        return Math.sqrt(vec.getX() * vec.getX() + vec.getY() * vec.getY());
    }

    /**
     * Returning the comparatively speaking 'max' Vector
     * @param vec1 one vec to be compared
     * @param vec2 another vec to be compared
     * @param upperLeft if the upper left or the lower right corner is higher
     * @return the highest left or the lowest right of the two given vecs
     */
    public static V2 specialMax(V2 vec1, V2 vec2, boolean upperLeft) {

        V2 diff = V2.add(vec1, V2.negate(vec2));

        if ((diff.getY() + diff.getX() <= 0) == upperLeft) {
            return vec1;
        } else {
            return vec2;
        }
    }
}
