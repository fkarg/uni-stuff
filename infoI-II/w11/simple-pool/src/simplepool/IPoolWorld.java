package simplepool;

public interface IPoolWorld {
	
	/**
	 * Return a world representing this world "seconds" advanced into
	 * the future. This might get inaccurate for really small steps
	 */
	public IPoolWorld step(double seconds);
	
	/**
	 * Return true iff the ball is still isMoving
	 */
	public boolean isMoving();

	/**
	 * This returns the current position of the ball
	 * @return V2-position-vector
	 */
	public V2 getCurrentBallPosition();

    /**
     * This is the length of the board.
     * @return The current length of the board
     */
	public double getLength();

    /**
     * This is the width of the board
     * @return The width of the current board
     */
	public double getWidth();


}
