package sessions2;

import java.util.Map;
import java.util.Queue;

/**
 * Author Felix Karg, written 2017-07-18.
 */
public class Label implements Session {

    private String name;
    private Session session;

    /**
     * Creating a new Session with this name
     * @param name
     * @param session
     */
    Label(String name, Session session) {
        this.name = name;
        this.session = session;
    }

    @Override
    public boolean check(Map<String, Session> jumpTable, Queue<Message> trace) {
        if (session.getJumpTable().containsKey(name)) {
            throw new IllegalArgumentException("Label already exists");
        }
        return session.check(jumpTable, trace);
    }

    @Override
    public Session dual() {
        return new Label(name, session.dual());
    }

    @Override
    public Map<String, Session> getJumpTable() {
        Map<String, Session> table = session.getJumpTable();
        if (table.containsKey(name)) {
            throw new IllegalArgumentException("Label already exists");
        }
        table.put(name, this);
        return table;
    }
}
