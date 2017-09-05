package rationals;

import java.lang.Math;

/**
 * Author Felix Karg, written 2017-06-15.
 */

public class Rational {

    private long nominator = 0;
    private long denominator = 0;

    // for internally calculating the smallest
    // nominator / denominator.
    private long euclid(long a, long b) {
        if (b == 0) return a;
        return euclid(b, a % b);
    }

    // creating new Rational number with @nominator and @denominator
    public Rational(long nominator, long denominator) {
        if (denominator == 0) throw new IllegalArgumentException("denominator cannot be zero!");
        long s = euclid(nominator, denominator);
        this.nominator = nominator / s;
        this.denominator = denominator / s;
    }

    // adding this Rational with @r
    public Rational add(Rational r) {

        long newn1 = Math.multiplyExact(this.nominator, r.getDenominator());
        long newn2 = Math.multiplyExact(this.denominator, r.getNominator());
        long newd = Math.multiplyExact(this.denominator, r.getDenominator());
        long e = euclid(euclid(newn1, newn2), newd);

        return new Rational(Math.addExact(newn1 / e, newn2 / e), newd / e);
    }

    // multiplying this Rational with @r
    public Rational multiply(Rational r) {

        long s = euclid(this.nominator, r.getDenominator());
        long e = euclid(this.denominator, r.getNominator());

        return new Rational(Math.multiplyExact(this.nominator / s, r.getNominator() / e),
                            Math.multiplyExact(this.denominator / e, r.getDenominator() / s));

        }

    // inverting the given Rational
    public static Rational invert(Rational r) {
        return new Rational(r.getDenominator(), r.getNominator());
    }

    // returning the closest double
    public double toDouble() {
        return (1.0 * nominator) / denominator;
    }

    // return the @nominator
    public long getNominator() {
        return nominator;
    }

    // return the @denominator
    public long getDenominator() {
        return denominator;
    }

    // comparing the two objects
    public boolean equals(Object o) {
        if (o == null) return false;
        if (!(o instanceof Rational)) return false;
        Rational r = (Rational) o;
        return r.getNominator() == this.getNominator()
                && r.getDenominator() == this.getDenominator();
    }

    public String toString() {
        return Long.toString(nominator) + " / " + Long.toString(denominator);
    }

}
