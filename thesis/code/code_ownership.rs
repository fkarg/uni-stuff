fn main() {
    let mut v = vec![];     // ---| v owns the (empty) vector
    v.push("Hello");        // <--| vector gets first element
                            //    |
    let x = &v[0];          // -| | x borrows the first element from v
    v.push("world");        // <X-| v cannot mutably borrow the vector
                            //  | | while x has immutably borrowed it
    println!("{}", x);      // -| | x needed at least until here
}                           // ---| x borrowing v ends, x, v go out of scope
