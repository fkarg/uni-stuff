package inttostring;

import java.util.NoSuchElementException;
import java.util.Scanner;

public class Main {

    public static void main(String[] arg0) {
        // creating scanner
        @SuppressWarnings("resource")
        Scanner scan = new Scanner(System.in);
        String txt = null;

        try {
            // getting the text
            txt = scan.next();
        } catch (NoSuchElementException e) {
            System.out.println("No int");
            return;
        }

        // variable for validating if it actually was an int
        boolean correct = false;

        try {
            // trying to parse it. it's an int if it was possible
            Integer.parseInt(txt);
            correct = true;

        } catch (NumberFormatException e) {
            // was no int.
            System.out.println("No int");
        }

        if (correct) {
            // was an int. output it again, no need to know it's value
            System.out.println("Found int: " + txt);

        }

    }

}



