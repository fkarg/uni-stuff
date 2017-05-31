package listoperations;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import java.util.function.Predicate;

public class Main {

    // creating dynamic array to work on
    static private List<String> words = new ArrayList<String>();


    public static void main(String[] arg0) {
        @SuppressWarnings("resource")
        // creating scanner
        Scanner scan = new Scanner(System.in);

        while (scan.hasNext()) {
            // getting command from next line
            String input = scan.nextLine();
            String[] split = input.split(" ");
            String command = split[0];

            try {
            switch(command) {
                // The following (commands) should roughly be self-explanatory

                case "append":
                    if (input.matches("append\\s([a-zA-Z]+)|\\d+")) {
                        words.add(input.split(" ")[1]);
                    } else {
                        System.out.println("INVALID COMMAND");
                    }
                    break;

                case "pop":
                    if (words.isEmpty()) {
                        System.out.println("DOES NOT COMPUTE");
                    } else {
                        words.remove(words.size() -1);
                    }
                    break;

                case "set":
                    int index = Integer.parseInt(input.split(" ")[1]);
                    if (index < words.size() && index >= 0) {
                        words.set(index, input.split(" ")[2]);
                    } else {
                        System.out.println("DOES NOT COMPUTE");
                    }
                    break;

                case "remove-first":
                    words.remove(input.split(" ")[1]);
                    break;

                case "remove-all":
                    words.removeIf(Predicate.isEqual(input.split(" ")[1]));
                    break;

                case "print":
                    System.out.print("::");
                    Iterator<String> itr = words.iterator();
                    while (itr.hasNext()) {
                        Object element = itr.next();
                        System.out.print(" " + element);
                    }
                    System.out.println("");
                    break;

                case "sort":
                    Collections.sort(words);
                    break;

                case "reverse":
                    Object[] itrl = words.toArray();
                    for (int s = words.size(); s > 0; s--) {
                        words.set(s - 1, (String) itrl[words.size() - s]);
                    }
                    break;

                default:
                    // did not recognize command
                    System.out.println("INVALID COMMAND");
                    break;
            }
            } catch (IndexOutOfBoundsException e) {
                // some command had not enough arguments
                System.out.println("INVALID COMMAND");
            }

        }

    }

}
