package simplepool;

/**
 * Author Felix Karg, written 2017-07-25.
 */
public class PoolWorlds implements IPoolWorld {

    private V2 pos_ball;
    private V2 vel_ball;
    private double length;
    private double width;
    private double neg_acc;
    private double epsilon;

    /**
     * Creating a new IPoolWorld, with the given Parameters
     * @param pos_ball The initial position of the ball.
     * @param vel_ball The initial velocity of the ball.
     * @param length The length of the field
     * @param width The width of the field
     * @param neg_acc The braking acceleration of the ball.
     * @param epsilon The epsilon saying that we are staying still.
     */
    public PoolWorlds(V2 pos_ball, V2 vel_ball, double length,
                      double width, double neg_acc, double epsilon) {

        if (pos_ball.getX() < 0 || pos_ball.getX() > length ||
                pos_ball.getY() < 0 || pos_ball.getY() > width) {
            throw new IllegalArgumentException(
                    "not a valid ball position: x: " + pos_ball.getX()
                            + ", y: " + pos_ball.getY());
        }

        this.pos_ball = pos_ball;
        this.vel_ball = vel_ball;
        this.length = length;
        this.width = width;
        this.neg_acc = neg_acc;
        this.epsilon = epsilon;
    }


    /**
     * Creating a new IPoolWorld, with the given Parameters
     * @param pos_ball The initial position of the ball.
     * @param v_ball The initial velocity of the ball.
     * @param length The length of the field
     * @param width The width of the field
     * @param neg_acc The braking acceleration of the ball.
     * @param epsilon The epsilon saying that we are staying still.
     * @return a new IPoolWorld with these Parameters
     */
    public static IPoolWorld makePoolWorld(V2 pos_ball, V2 v_ball,
                                           double length, double width,
                                           double neg_acc, double epsilon) {
        return new PoolWorlds(pos_ball, v_ball, length, width, neg_acc, epsilon);
    }

    @Override
    public IPoolWorld step(double seconds) {
        V2 nballpos;
        V2 nballvel;
        double btime = Physics.brakingTimeToStop(vel_ball.abs(), neg_acc);
        if (btime <= seconds) {
            nballvel = new V2(0, 0);
            nballpos = Physics.positionAtTime(btime, pos_ball, vel_ball, neg_acc);
        } else {
            nballvel = Physics.velocityAtTime(seconds, vel_ball, neg_acc);
            nballpos = Physics.positionAtTime(seconds, pos_ball, vel_ball, neg_acc);
        }


        if ( ((int) (nballpos.getX() / length)) % 2 == 1) {
            nballvel = nballvel.negX();
        }

        if ( ((int) (nballpos.getY() / width)) % 2 == 1) {
            nballvel = nballvel.negY();
        }

        // TODO all the special cases

        // we regard the x and y plane as different dimension with no relation regarding the
        // bouncing off the wall, where they really shouldn't.

        // well, I've failed. what now?


        return new PoolWorlds(nballpos, nballvel, length, width, neg_acc, epsilon);
    }

    @Override
    public boolean isMoving() {
        return vel_ball.abs() >= epsilon;
    }

    @Override
    public V2 getCurrentBallPosition() {
        return pos_ball;
    }

    @Override
    public double getLength() {
        return length;
    }

    @Override
    public double getWidth() {
        return width;
    }
}
