package rationals;

import org.junit.Test;

import static org.junit.Assert.*;

public class RationalTestExamples {

    @Test
    public void multiply() {
        Rational r1 = new Rational(1, 2);
        Rational r2 = new Rational(3, 4);
        Rational r3 = new Rational(3, 8);
        assertEquals(r3, r1.multiply(r2));
    }

    @Test
    public void invert() {
        Rational r = new Rational(5, 8);
        assertEquals(5, Rational.invert(r).getDenominator());
        assertEquals(8, Rational.invert(r).getNominator());
    }

    @Test
    public void toDouble() {
        Rational r = new Rational(1, 2);
        assertEquals(0.5, r.toDouble(), 0.000001);
    }

    @Test
    public void getNominator() {
        Rational r = new Rational(1, 2);
        assertEquals(1, r.getNominator());
    }

    @Test
    public void getDenominator() {
        Rational r = new Rational(1, 2);
        assertEquals(2, r.getDenominator());
    }

    @Test
    public void equals() {
        Rational r1 = new Rational(1, 2);
        Rational r2 = new Rational(1, 2);
        assertEquals(r1, r1);
        assertEquals(r1, r2);
    }

    @Test
    public void toStringTest() {
        Rational r = new Rational(1, 2);
        assertEquals("1 / 2", r.toString());
    }

    @Test
    public void testAddingPrecicely() {
        Rational r1 = new Rational(10000000000l, 1);
        Rational r2 = new Rational(1, 2);
        assertEquals(new Rational(20000000001l, 2), r1.add(r2));
    }

    @Test
    public void testMultiplyingInverse() {
        Rational r1 = new Rational(4, 3);
        Rational r3 = new Rational(1, 1);
        assertEquals(r3, r1.multiply(Rational.invert(r1)));
    }

    @Test
    public void testUniqueNominator() {
        Rational r1 = new Rational(1, 2);
        Rational r2 = new Rational(2, 4);
        assertEquals(r1.getNominator(), r2.getNominator());
        assertEquals(r1.getDenominator(), r2.getDenominator());
        assertEquals(r1, r2);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testThrowingWithDenominatorZero() {
        new Rational(1, 0);
    }
}
