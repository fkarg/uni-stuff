package loopinterpreter;

/**
 * Author Felix Karg, written 2017-06-26.
 */
public class Sequential implements Statement {

    private Statement s1;
    private Statement s2;

    /**
     * Executing two Statements in sequential order
     * @param s1 The first statement to be executed
     * @param s2 The second statement to be executed
     */
    public Sequential(Statement s1, Statement s2) {
        this.s1 = s1;
        this.s2 = s2;
    }

    @Override
    public State run(State initial) {
        return s2.run(s1.run(initial));
    }
}
