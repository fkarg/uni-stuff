package sessions;

import java.util.Queue;

/**
 * Author Felix Karg, written 2017-07-05.
 */
public class DateRecv implements Session {

    private Session next;

    /**
     * Creates a new Data-Receiving Session
     * @param next the 'next' Session
     */
    DateRecv(Session next) {
        this.next = next;
    }

    @Override
    public boolean check(Queue<Message> trace) {
        return trace.size() > 0 &&
                trace.peek().getMode() == MessageMode.RECEIVE &&
                trace.poll().getKind() == MessageKind.DATA &&
                next.check(trace);
    }

    @Override
    public Session dual() {
        return new DateSend(next.dual());
    }
}
