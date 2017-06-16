package blockworld;

import static java.lang.Math.min;

/**
 * Author Felix Karg, written 2017-06-16.
 */
public class Block {

    private int xcoord;
    private int ycoord;
    private int vel;
    private int maxheight;
    private char shape;

    // creating a block at (@x,@y), with @velocity downwards and visible as @shape.
    // the block will fall down further each step until it reaches the bottom.
    public Block(int x, int y, int velocity, char shape) {
        if (x < 0 || y < 0 || velocity < 0) throw new IllegalArgumentException("bigger zero!!");

        this.xcoord = x;
        this.ycoord = y;
        this.vel = velocity;
        this.shape = shape;
    }

    // makes one step forward in time
    public void step() {
        ycoord = min(ycoord + vel, maxheight - 1);
    }

    public int getXcoord() {
        return xcoord;
    }

    public int getYcoord() {
        return ycoord;
    }

    // drawing this block on the @canvas
    public char[][] draw(char[][] canvas) {
        canvas[xcoord][ycoord] = shape;
        return canvas;
    }

    // setting the required maximum height of the world
    public void setMaxheight(int maxheight) {
        this.maxheight = maxheight;
    }
}
