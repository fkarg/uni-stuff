package sessions;

import java.util.Queue;
import java.util.regex.Pattern;

/**
 * Author Felix Karg, written 2017-07-05.
 */
public class DateSend implements Session {

    private Session next;
    // public final String DATEPATTERN = "^[0-3]?[0-9].[0-3]?[0-9].(?:[0-9]{2})?[0-9]{2}$";

    /**
     * Creates a new Date-sending Session
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
                // trace.poll().getPayLoad().matches("[a-zA-Z0-9]+") &&
                next.check(trace);
    }

    @Override
    public Session dual() {
        return new DateRecv(next.dual());
    }
}
