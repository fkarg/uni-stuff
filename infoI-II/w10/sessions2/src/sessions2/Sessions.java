package sessions2;

import sessions2.Session;

import java.util.Map;
import java.util.Queue;

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

    public static boolean check(Session session, Queue<Message> trace) {
        return session.check(session.getJumpTable(), trace);
    }

    public static Session continueWith(String labelName) {
        return new ContinueWith(labelName);
    }

    public static Session label(String labelName, Session session) {
        return new Label(labelName, session);
    }
}
