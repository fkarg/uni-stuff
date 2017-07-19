package listeditor;

import java.io.PrintWriter;
import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * Author Felix Karg, written 2017-07-03.
 */
public class AbortEditor extends ListEditor {

    /**
     * Create new AbortEditor
     * @param out the PrintWriter for output
     */
    public AbortEditor(PrintWriter out) {
        super(out);
    }

    @Override
    protected void executeMissing(String cmd, Scanner restOfLine) {
        throw new InputMismatchException("\'" + cmd + " " + restOfLine + "\' is no valid command.");
    }
}
