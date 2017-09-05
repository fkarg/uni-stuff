package loopinterpreter;

/**
 * Author Felix Karg, written 2017-06-26.
 */
public class Statements {

    public static Statement assign(String name, Expression exp) {
        return new Assign(name, exp);
    }

    public static Statement seq(Statement s1, Statement s2) {
        return new Sequential(s1, s2);
    }

    public static Statement cond(Expression exp, Statement s1, Statement s2) {
        return new Condition(exp, s1, s2);
    }

    public static Statement loop(Expression exp, Statement s) {
        return new Loop(exp, s);
    }
}
