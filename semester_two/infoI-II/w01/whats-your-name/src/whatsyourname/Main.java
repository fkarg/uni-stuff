package whatsyourname;

import java.util.Scanner;


public class Main {

    /**
     * Read pre- and surname from stdin and print a greeting.
     */
    public static void main(String[] args)  {
        // creating scanner
        @SuppressWarnings("resource")
        Scanner scan = new Scanner(System.in);

        // asking for <surname> <name>
        String surname = scan.next();
        String name = scan.next();

        // printing output
        System.out.println("Hello " + surname + "! You just delved into Java.");
        System.out.println("Your full name: " + surname + " " + name + ".");

    }
}
