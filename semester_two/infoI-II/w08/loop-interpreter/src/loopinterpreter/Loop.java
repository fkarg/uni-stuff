package loopinterpreter;

/**
 * Author Felix Karg, written 2017-06-26.
 */
public class Loop implements Statement {

    private Expression expression;
    private Statement statement;

    /**
     * This creates a Loop executing the statement as long as the condition holds
     * @param exp The expression to be checked for
     * @param s The statement to be executed each time
     */
    public Loop(Expression exp, Statement s) {
        this.expression = exp;
        this.statement = s;
    }

    @Override
    public State run(State initial) {
        for(; expression.eval(initial) != 0; initial = statement.run(initial));
        return initial;
    }
}
