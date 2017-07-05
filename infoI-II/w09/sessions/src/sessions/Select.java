package sessions;

import java.util.HashMap;
import java.util.Map;
import java.util.Queue;

/**
 * Author Felix Karg, written 2017-07-05.
 */
public class Select implements Session {

    private Map<String, Session> clauses;

    /**
     * Creates a new Selecting Session with
     *
     * @param clauses given. (commands)
     */
    Select(Map<String, Session> clauses) {
        this.clauses = clauses;
    }

    @Override
    public boolean check(Queue<Message> trace) {
        return trace.size() > 0 &&
                trace.peek().getKind() == MessageKind.COMMAND &&
                trace.peek().getMode() == MessageMode.SEND &&
                clauses.getOrDefault(trace.poll().getPayLoad(), new Final()).check(trace);
    }

    @Override
    public Session dual() {
        Map<String, Session> turned = new HashMap<>();
        clauses.forEach((command, session) -> turned.put(command, session.dual()));
        return new Branch(turned);
    }
}
