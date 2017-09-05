package loopinterpreter;

/**
 * Author Felix Karg, written 2017-06-26.
 */
public class Assign implements Statement {

    private String name;
    private Expression expression;

    /**
     * Assigning the result of an expression to a variable
     * @param name the name of the variable to be assigned
     * @param expr the value to be assigned to the variable
     */
    public Assign(String name, Expression expr) {
        this.name = name;
        this.expression = expr;
    }

    @Override
    public State run(State state) {
        state.put(name, expression.eval(state));
        return state;
    }
}
