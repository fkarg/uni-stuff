package sessions;

import java.util.Map;

/**
 * Author Felix Karg, written 2017-07-04.
 */
public class Sessions {

    public static Session send(Session rest) {
        return new DateSend(rest);
    }

    public static Session recv(Session rest) {
        return new DateRecv(rest);
    }

    public static Session end() {
        return new Final();
    }

    public static Session select(Map<String, Session> clauses) {
        return new Select(clauses);
    }

    public static Session branch(Map<String, Session> clauses) {
        return new Branch(clauses);
    }

}
