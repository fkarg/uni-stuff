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

            // trying max values and categorizing based on them
            if (val > Byte.MAX_VALUE || val < Byte.MIN_VALUE) {
                System.out.print(txt + " fits in: \n* long\n* int\n* short");
            } else if (val > Short.MAX_VALUE || val < Short.MIN_VALUE) {
                System.out.print(txt + " fits in: \n* long\n* int");
            } else if (val > Integer.MAX_VALUE || val < Integer.MIN_VALUE) {
                System.out.print(txt + " fits in: \n* long");
            } else {
                System.out.print(txt + " fits in: \n* long\n* int\n* short\n* byte");
            }

        } catch (NumberFormatException e) {
            System.out.println("\"" + txt + "\" doesn't fit anywhere.");
        }

    }
}
