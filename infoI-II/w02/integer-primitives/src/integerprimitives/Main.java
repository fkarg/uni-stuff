package integerprimitives;

import java.util.Scanner;

public class Main {

    public static void main(String[] arg0) {
        // creating scanner
        @SuppressWarnings("resource")
        Scanner scan = new Scanner(System.in);

        // scanning for value
        String txt = scan.next();
        long val = 0; // assuming biggest size, fitting all

        try {
            val = Long.parseLong(txt);
            String out = txt + " fits in:\n";

             // trying max values and categorizing based on them
            if (val <= Byte.MAX_VALUE && val >= Byte.MIN_VALUE) {
                out += "* byte\n";
            } 
            if (val <= Short.MAX_VALUE && val >= Short.MIN_VALUE) {
                out += "* short\n";
            }
            if (val <= Integer.MAX_VALUE || val >= Integer.MIN_VALUE) {
                out += "* int\n";
            }
            out += "* long";
            System.out.println(out);
        } catch (NumberFormatException e) {
            System.out.println("\"" + txt + "\" doesn't fit anywhere.");
        }

    }
}
