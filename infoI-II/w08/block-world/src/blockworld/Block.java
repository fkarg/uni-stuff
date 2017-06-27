package blockworld;

import static java.lang.Math.max;
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

    /**
     * Creates a new Block being capable of falling down
     * @param x The x-location of the block
     * @param y The y-location of the block
     * @param velocity The velocity with which the block is falling down
     * @param shape The shape with which the block is to be displayed.
     */
    public Block(int x, int y, int velocity, char shape) {
        if (x < 0 || y < 0 || velocity < 0) throw new IllegalArgumentException("bigger zero!!");

        this.xcoord = x;
        this.ycoord = y;
        this.vel = velocity;
        this.shape = shape;
    }

    /**
     * Steps further in time, lets the block fall down if possible
     */
    public void step() {
        ycoord = min(ycoord + vel, maxheight - 1);
    }

    /**
     * @return The X-coordinate of the block
     */
    public int getXcoord() {
        return xcoord;
    }

    /**
     * @return The Y-coordinate of the block
     */
    public int getYcoord() {
        return ycoord;
    }

    /**
     * Drawing this block on the given canvas
     * @param canvas The canvas to be drawn upon
     * @return The canvas now including this block
     * (Block might not be drawn if another block is there already)
     */
    public char[][] draw(char[][] canvas) {
        canvas[xcoord][ycoord] = (char) Math.max((int) canvas[xcoord][ycoord], (int) shape);
        return canvas;
    }

    // setting the required maximum height of the world

    /**
     * Setting the maximum height of the world, required for
     * blocks not to fall out of the world
     * @param maxheight The height to be set
     */
    public void setMaxheight(int maxheight) {
        this.maxheight = maxheight;
    }
}
