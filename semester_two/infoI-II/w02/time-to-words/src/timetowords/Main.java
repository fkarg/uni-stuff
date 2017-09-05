package timetowords;

import java.util.Scanner;

public class Main {

    static String stringifyMinute(int num) {
        String[] s = 
                { ""          // 0
                , "one"       // 1
                , "two"       // 2
                , "three"     // 3
                , "four"      // 4
                , "five"      // 5
                , "six"       // 6
                , "seven"     // 7
                , "eight"     // 8
                , "nine"      // 9
                , "ten"       // 10
                , "eleven"    // 11
                , "twelve"    // 12
                
                , "teen"      // 13
                , "ty"        // 14
                
                , "twen"      // 15
                , "thir"      // 16
                , "for"       // 17
                , "fif"       // 18
                , "six"       // 19
                , "seven"     // 20
                , "eigh"      // 21
                , "nine"      // 22
                
                , "hundred"   // 23
                , "thousand"  // 24
                , "and"       // 25
                };
        if (num % 15 == 0) {
        	switch (num / 15) {
        	case 0:
        		return "o`clock";
        	case 1:
        		return "quarter ";
        	case 2:
        		return "half past ";
        	case 3:
        		return "quarter to ";
        	}
        }
        if ( num < 13) {
            return s[num] + " ";
        } else if (num == 14) {
            return s[4] + s[13] + " ";
        } else if (num < 20) {
            return s[num + 3] + s[13] + " ";
        } else if (num < 100) {
            String last = "";
            if (num % 10 > 0) {
                last = "-" + stringifyMinute(num % 10);
            }
            return s[(num / 10) + 13] + s[14] + last + " ";
        }
        return "";
    }


    public static void main(String[] arg0) {
        // creating scanner
        @SuppressWarnings({ "resource" })
        Scanner scan = new Scanner(System.in);

        int H = scan.nextInt();
        int M = scan.nextInt();

        if (H >= 12 || H < 1 || M < 0 || M > 60) {
            System.out.println("Wrong Input");
        }
        System.out.println(stringifyMinute(H));
        System.out.println(stringifyMinute(M));
    }
}

