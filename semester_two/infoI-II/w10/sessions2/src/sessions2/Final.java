package sessions2;

import java.util.HashMap;
import java.util.Map;
import java.util.Queue;

/**
 * Author Felix Karg, written 2017-07-05.
 * This is an empty (ended, finalised) Session.
 */
public class Final implements Session {

    @Override
    public boolean check(Map<String, Session> jumpTable, Queue<Message> trace) {
        return trace.size() == 0;
    }

    @Override
    public Session dual() {
        return this;
    }

    @Override
    public Map<String, Session> getJumpTable() {
        return new HashMap<>();
    }
}
