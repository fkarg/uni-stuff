package sessions;

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
    public boolean check(Queue<Message> trace) {
        return trace.size() > 0 &&
                trace.peek().getMode() == MessageMode.SEND &&
                trace.poll().getKind() == MessageKind.DATA &&
                next.check(trace);
    }

    @Override
    public Session dual() {
        return new DateRecv(next.dual());
    }
}
