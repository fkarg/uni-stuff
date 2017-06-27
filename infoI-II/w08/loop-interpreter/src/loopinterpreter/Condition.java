package loopinterpreter;

/**
 * Author Felix Karg, written 2017-06-26.
 */
public class Condition implements Statement {

    private Expression cond;
    private Statement t;
    private Statement f;

    /**
     * The conditional statement behaves just like an if
     * @param cond the condition to be checked for
     * @param t the true-statement
     * @param f the false-statement
     */
    public Condition(Expression cond, Statement t, Statement f) {
        this.cond = cond;
        this.t = t;
        this.f = f;
    }

    @Override
    public State run(State initial) {
        if (cond.eval(initial) == 0) {
            return f.run(initial);
        } else {
            return t.run(initial);
        }
    }
}
