package anagrams;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class Main {

    // this is the function turning a String to an ArrayList of Characters
    // (why is this not already-available functionality?)
    private static ArrayList<Character> toList(final String word) {
        ArrayList<Character> charList = new ArrayList<Character>();

        for(int i = 0; i<word.length();i++){
            charList.add(word.charAt(i));
        }
        return charList;
    }

    public static void main(String[] arg0) {
        // creating Scanner
        @SuppressWarnings("resource")
        Scanner scan = new Scanner(System.in);

        // as long as there is input, read the two words and compare them,
        // as well as return if they are anagrams or not
        while (scan.hasNext()) {
            String input = scan.nextLine();
            List<Character> word1 = toList(input.split(" ")[0].toLowerCase());
            List<Character> word2 = toList(input.split(" ")[1].toLowerCase());
            Collections.sort(word1);
            Collections.sort(word2);

            if (word1.equals(word2)) {
                System.out.println("Anagrams");
            } else {
                System.out.println("Not anagrams");
                // System.out.println(word1 + " " + word2);
            }
        }
    }
}
