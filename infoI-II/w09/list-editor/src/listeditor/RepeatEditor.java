package listeditor;

import java.io.PrintWriter;
import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * Author Felix Karg, written 2017-07-03.
 */
public class RepeatEditor extends ListEditor {

    /**
     * Create new RepeatEditor
     * @param out the PrintWriter for the ListEditor
     */
    public RepeatEditor(PrintWriter out) {
        super(out);
    }

    @Override
    protected void executeMissing(String cmd, Scanner restOfLine) {

        // if the command is actually 'repeat'
        if (cmd.equals("repeat")) {

            if (restOfLine.hasNextInt()) {
                // how often we should repeat
                int i = restOfLine.nextInt();
                // if there possibly is a command to repeat
                if (restOfLine.hasNext(WORD_PATTERN)) {
                    StringBuilder w = new StringBuilder();
                    for (;restOfLine.hasNext(); w.append(' '), w.append(restOfLine.next())) {};
                    // built the command, now we have to repeatedly execute it -
                    // which will be done through the precedence given to the buffer
                    for (int j = 0; j < i; j++) {
                        pushBack(w.toString());
                    }
                    // everything went well, so there was no InputMismatch up until here.
                    return;
                }
            }
        }
        // somehow the command was formatted in the wrong way, so we throw an exception
        throw new InputMismatchException("no valid command: " + cmd);
    }
}
