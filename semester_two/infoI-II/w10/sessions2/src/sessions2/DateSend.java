package sessions2;

import java.util.Map;
import java.util.Queue;

/**
 * Author Felix Karg, written 2017-07-05.
 */
public class DateSend implements Session {

    private Session next;

    /**
     * Creates a new Data-sending Session
     * @param next the following session
     */
    DateSend(Session next) {
        this.next = next;
    }

    @Override
    public boolean check(Map<String, Session> jumpTable, Queue<Message> trace) {
        return trace.size() > 0 &&
                trace.peek().getMode() == MessageMode.SEND &&
                trace.poll().getKind() == MessageKind.DATA &&
                next.check(jumpTable, trace);
    }

    @Override
    public Session dual() {
        return new DateRecv(next.dual());
    }

    @Override
    public Map<String, Session> getJumpTable() {
        return next.getJumpTable();
    }
}
