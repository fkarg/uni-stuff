package sessions2;

import java.util.HashMap;
import java.util.Map;
import java.util.Queue;

/**
 * Author Felix Karg, written 2017-07-18.
 */
public class ContinueWith implements Session {

    private String name;

    /**
     * Create a new jump to the given label
     * @param name
     */
    ContinueWith(String name) {
        this.name = name;
    }

    @Override
    public boolean check(Map<String, Session> jumpTable, Queue<Message> trace) {
        if (!jumpTable.containsKey(name)) {
            throw new IllegalArgumentException("Key not here.");
        }
        return jumpTable.get(name).check(jumpTable, trace);
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
