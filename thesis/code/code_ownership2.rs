fn main() {
    let mut v = vec![];     // ---| v owns the (empty) vector
    v.push("Hello");        // <--| vector gets first element
                            //    |
    let x = &v[0];          // -| | x borrows the first element from v
    println!("{}", x);      // -| | x needed only until here
                            //    | x returns the borrow here
    v.push("world");        // <--| v can now modify the vector
                            //    | (mutable borrow needed)
    println!("{}", v[1]);   // <--| v can be printed without trouble
}                           // ---| x, v going out of scope
