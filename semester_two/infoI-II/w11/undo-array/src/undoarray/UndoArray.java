package undoarray;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Author Felix Karg, written 2017-07-20.
 */
public class UndoArray<X> {

    private final int goBackSize;
    private ArrayList<X> list;
    private ArrayList<Tuple<Integer, X>> history;

    /**
     * Create a new UndoArray
     * @param init-values of the fields
     * @param size of the Array
     * @param historySize number of maximum undo-operations at once
     */
    public UndoArray(X init, int size, int historySize) {

        if (size < 0 || historySize < 0) {
            throw new IllegalArgumentException("sizes have to be bigger 0!");
        }

        goBackSize = historySize;
        history = new ArrayList<>();
        list = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            list.add(i, init);
        }
    }

    /**
     * Inserting an element
     * @param idx index to insert at
     * @param elem Element to be inserted
     */
    public void put(int idx, X elem) {

        if (idx >= list.size() || idx < 0) {
            throw new IndexOutOfBoundsException();
        }

        if (history.size() >= goBackSize) {
            history.remove(0);
        }

        history.add(new Tuple<>(idx, list.get(idx)));
        list.set(idx, elem);
    }

    /**
     * @return immutable list of elements in this Array
     */
    public List<X> get() {
        return Collections.unmodifiableList(list);
    }

    /**
     * Undo last put-operation
     * @return true if it could be undone,
     * false otherwise.
     */
    public boolean undo() {
        if (history.size() == 0) {
            return false;
        }
        Tuple<Integer, X> undoaction = history.remove(history.size() - 1);
        list.set(undoaction.fst, undoaction.snd);
        return true;
    }
}
