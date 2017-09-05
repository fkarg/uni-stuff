package averageroundednumber;

import java.util.Scanner;
import java.lang.String;

public class Main {
    public static void main(String[] args)  {
        // creating a scanner
        @SuppressWarnings("resource")
        Scanner scan = new Scanner(System.in);
        
        // create value-space
        float[] inp = new float[3];

        // asking for values
        for (int i = 0; i < 3; i++) {
            inp[i] = scan.nextFloat();
        }

        // calculating the average ...
        float avg = (inp[0] + inp[1] + inp[2]) / 3;
        
        // printing the resulting average
        System.out.println(String.format("%.2f", avg));

    }
}
