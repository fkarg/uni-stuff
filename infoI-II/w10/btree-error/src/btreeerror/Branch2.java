package btreeerror;

public class Branch2 extends Branch {
    
    private final BTree left;
    private final BTree right;
    

    public Branch2(BTree left, BTree right) {
        super(left, right);
        this.left = left;
        this.right = right;
    }

    @Override
    public int height() {
        return 1 + Math.max(left.height(), right.height());
    }
}
