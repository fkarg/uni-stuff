package undoarray;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Author Felix Karg, written 2017-07-20.
 */
public class UndoArray<X> {

    private int goneBack = 0;
    private final X init;
    private final int size;
    private final int goBackSize;
    // private ArrayList<X> list;
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

        this.init = init;
        this.size = size;
        goBackSize = historySize;
        history = new ArrayList<>();
    }

    /**
     * Inserting an element
     * @param idx index to insert at
     * @param elem Element to be inserted
     */
    public void put(int idx, X elem) {

        if (idx > size - 1 || idx < 0) {
            throw new IndexOutOfBoundsException();
        }

        history.add(new Tuple<>(idx, elem));
        if (goneBack > 0) {
            goneBack -= 1;
        }
    }

    /**
     * @return immutable list of elements in this Array
     */
    public List<X> get() {
        ArrayList<X> list = new ArrayList<>();

        for (int i = 0; i < size; i++) {
            list.add(i, init);
        }

        history.forEach(t -> list.set(t.fst, t.snd));
        return Collections.unmodifiableList(list);
    }

    /**
     * Undo last put-operation
     * @return true if it could be undone,
     * false otherwise.
     */
    public boolean undo() {
        if (history.size() == 0 || goneBack >= goBackSize) {
            return false;
        }
        history.remove(history.size() - 1);
        goneBack += 1;
        return true;
    }
}
