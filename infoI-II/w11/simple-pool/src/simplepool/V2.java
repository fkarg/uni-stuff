package simplepool;

/**
 * A two dimensional vector, implementing common operations. The math is taken from Wikipedia.
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

    /**
     * Add this vector to "other"
     */
    public V2 add(V2 other) {
        return new V2(
                x + other.getX(),
                y + other.getY());
    }
    
    public V2 scale(double factor) {
    	return new V2(
    			x * factor,
    			y * factor);
    }

    /**
     * Simply negates the X-value
     * @return a new V2 with the x-value negated.
     */
    public V2 negX() {
        return new V2(-x, y);
    }

    /**
     * Simply negating the Y-value
     * @return a new V2 with a negated y-value
     */
    public V2 negY() {
        return new V2(x, -y);
    }
    
    /**
     * Calculate the absolute value (i.e. the length) of this vector.     
     */
    public double abs() {
    	return Math.sqrt(x*x + y*y); 
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

        if (Double.compare(v2.x, x) != 0) return false;
        return Double.compare(v2.y, y) == 0;

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
}
