package sessions2;

import javax.print.DocFlavor;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;

/**
 * Author Felix Karg, written 2017-07-05.
 */
public class Branch implements Session {

    private Map<String, Session> clauses;

    /**
     * Creates a new Branch of the Server with
     * @param clauses given. (commands)
     */
    Branch(Map<String, Session> clauses) {
        this.clauses = clauses;
    }

    @Override
    public boolean check(Map<String, Session> jumpTable, Queue<Message> trace) {
        return trace.size() > 0 &&
                trace.peek().getKind() == MessageKind.COMMAND &&
                trace.peek().getMode() == MessageMode.RECEIVE &&
                clauses.getOrDefault(trace.poll().getPayLoad(), new Final()).check(jumpTable, trace);
    }

    @Override
    public Session dual() {
        Map<String, Session> turned = new HashMap<>();
        clauses.forEach((command, session) -> turned.put(command, session.dual()));
        return new Select(turned);
    }

    @Override
    public Map<String, Session> getJumpTable() {
        Map<String, Session> table = new HashMap<>();
        clauses.forEach((name, session) -> table.putAll(session.getJumpTable()));
        return table;
    }
}
