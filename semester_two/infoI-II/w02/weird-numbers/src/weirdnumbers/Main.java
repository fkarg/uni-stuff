package weirdnumbers;

import java.util.Scanner;

public class Main {
    public static void main(String[] arg0) {
        @SuppressWarnings("resource")
        Scanner scan = new Scanner(System.in);

        int inp = scan.nextInt();

        if (inp % 2 == 1 || (inp >= 6 && inp <= 20) || inp < 0) {
            System.out.println("Weird");
        } else {
            System.out.println("Not Weird");
        }
    }
}




