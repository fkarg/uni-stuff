package conditionalfunctions;



public class Functions {
    public static String turbineControl(double f) {

        if (f <= 49 || f >= 51) {
            // disconnect if frequency is absolutely not okay
            return "DISCONNECT";
        } else if (f < 50) {
            // get more water if frequency is too low
            return "MORE WATER";
        } else if (f > 50) {
            // get less water if frequency is too high
            return "LESS WATER";
        } // else
        // turbine is steady, all good
        return "STEADY";
    }
}



