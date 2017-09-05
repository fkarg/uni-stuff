package loopinterpreter;

/**
 * Author Felix Karg, written 2017-06-26.
 */
public interface Statement {
    public State run(State initial);
}
