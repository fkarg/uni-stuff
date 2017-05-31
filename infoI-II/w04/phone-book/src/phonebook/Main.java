package phonebook;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Main {

    // this is the internal phonebook, with name-number mappings as Strings
    static private Map<String, String> phonebook = new HashMap<String, String>();

    public static void main(String[] arg0) {
        // creating scanner
        @SuppressWarnings("resource")
        Scanner scan = new Scanner(System.in);

        // this is the (regex-) pattern of a valid (complete) input
        String pattern = "(([a-zA-Z]+\\s[a-zA-Z]+)|([a-zA-Z]+))\\s(\\d+)";


        String input = "";

        // scan for the number of inputs to be read, then read them in
        for (int lines = scan.nextInt(), i = 0; scan.hasNext() && i < lines;) {
            input += scan.next() + " ";
            String[] valid = input.split(" ", 3);
            if (input.trim().matches(pattern)) {

                // if we are overwriting something, if yes, warn
                if (phonebook.containsKey(valid[0]) && valid[1].matches("\\d+")) {
                    System.out.println("Warning: overwriting entry for: " + valid[0]);
                } else if (phonebook.containsKey(valid[0] + " " + valid[1])) {
                    System.out.println("Warning: overwriting entry for: " + valid[0] + " " + valid[1]);
                }

                // check if the name has two words or simply one,
                // and input the new number
                if (valid[1].matches("\\d+")) {
                    phonebook.put(valid[0], valid[1]);
                } else {
                    phonebook.put(valid[0] + " " + valid[1], valid[2]);
                }

                input = "";
                i++;
            }
        }

        // some input did not match, so there was some input-format error
        if (input != "") {
            System.out.println("Error: cannot parse phone book.");
            return;
        }

        // recalling the saved numbers
        while (scan.hasNext()) {
            String name = scan.nextLine();
            if (name.matches("([a-zA-Z]+\\s[a-zA-Z]+)|([a-zA-Z]+)")) {
                if (phonebook.get(name) == null) {
                    System.out.println("Not found: " + name);
                } else {
                    System.out.println(name + " = " + phonebook.get(name).trim());
                }
            } else if (name.length() > 1) {
                System.out.println("Not a name: " + name);
            }
        }
    }
}
