package linenumbers;

import java.util.Scanner;

public class Main {
    public static void main(String[] arg0) {
        @SuppressWarnings("resource")
        Scanner scan = new Scanner(System.in);
        //
        long n = 0, m = 0, currentLine;
        switch (arg0.length) {
            case 0:
                n = 0;
                m = Long.MAX_VALUE;
                break;
            case 1:
                n = Long.parseLong(arg0[0]);
                m = Long.MAX_VALUE;
                break;
            case 2:
                n = Long.parseLong(arg0[0]);
                m = Long.parseLong(arg0[1]);
                break;
            default:
                System.out.println("Bad arguments.\nUsage: line-numbers [start-number [end-number]]");
                break;
        }

        for (currentLine = 0; currentLine < n; currentLine++) {
            scan.nextLine();
        }

        for(; currentLine < m && scan.hasNextLine(); currentLine++) {
            String inp = scan.nextLine();
            System.out.println(Long.toString(currentLine + 1) + " " + inp);
        }
    }
}
