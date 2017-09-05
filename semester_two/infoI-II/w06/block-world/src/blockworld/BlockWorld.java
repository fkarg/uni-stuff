package blockworld;

import java.util.List;

/**
 * Author Felix Karg, written 2017-06-16.
 */
public class BlockWorld {

    private char[][] emptyworld;
    private int width = 0;
    private int height = 0;
    private List<Block> blocks;

    // creating a new BlockWorld with @height x @width
    // and @blocks at places, otherwise @empty
    public BlockWorld(int width, int height,
                      List<Block> blocks, char empty) {
        this.width = width;
        this.height = height;
        this.blocks = blocks;

        emptyworld = new char[width][height];
        // initializing the empty world
        for (int i = 0; i < width; i++)
            for (int j = 0; j < height; j++)
                emptyworld[i][j] = empty;

        blocks.forEach(block -> block.setMaxheight(height));
    }

    // returning the @width of the world
    public int getWidth() {
        return width;
    }

    // returning the @height of the world
    public int getHeight() {
        return height;
    }

    // getting the current state of the world as Ascii-art
    public char[][] observe() {
        char[][] canvas = emptyworld;

        // drawing the blocks
        for (Block block : blocks)
            canvas = block.draw(canvas);

        return canvas;
    }

    // make on step further in the timeline of the World
    public void step() {
        blocks.forEach(Block::step);
    }

    // testing if the world is at a standstill already
    public boolean isDead() {
        for (Block block : blocks) {
            if (block.getYcoord() != height - 1)
                return false;
        }
        return true;
    }

}
