package addtwoints;

import java.util.Scanner;

// read two ints from stdin, add them and print out the result.
public class Main {

    @SuppressWarnings("resource")
    public static void main(String[] args) {
        // creating a scanner
        Scanner scan = new Scanner(System.in);

        // reading values
        int x = scan.nextInt();
        int y = scan.nextInt();

        // writing values
        System.out.println(x + y);
    }
}
