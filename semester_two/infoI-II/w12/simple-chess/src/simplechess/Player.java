package simplechess;

/**
 * The players of simple-chess.
 */
public enum Player {
    WHITE,

    BLACK;

    /**
     * Simple next-implementation as to which player's turn it is.
     * @return The player to play the next turn.
     */
    public Player next() {
        if (this.equals(WHITE)) {
            return BLACK;
        } else {
            return WHITE;
        }

    }
}
