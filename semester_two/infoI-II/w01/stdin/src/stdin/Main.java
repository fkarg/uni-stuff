package stdin;

import java.util.Scanner;

// read  3 ints from sdtin and print each on a new line
public class Main {
    public static void main(String[] args) {
        // creating scanner
        @SuppressWarnings("resource")
        Scanner scan = new Scanner(System.in);

        // scanning for values
        String x = scan.next();
        String y = scan.next();
        String z = scan.next();

        // printing values again
        System.out.println(x + "\n" + y + "\n" + z);
    }
}
