package convertunits;


public class Conversions {

    // convert kilometres to miles
    public static double km2miles(double x) {
        return x * 0.62137;
    }

    // convert miles to kilometres
    public static double miles2km(double x) {
        return x * 1 / 0.62137;
    }

    // convert celsius to fahrenheit
    public static double celsius2fahrenheit(double x) {
        return x * 9/5 + 32;
    }

    // convert fahrenheit to celsius
    public static double fahrenheit2celsius(double x) {
        return (x - 32) * 5/9;
    }

}
