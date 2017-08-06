// Copyright 2017, University of Freiburg,
// Chair of Algorithms and Data Structures.
// Author: Hannah Bast <bast@cs.uni-freiburg.de>

package main
import("fmt"
       "time")

func main() {
  n := 5 * 1000 * 1000
  fmt.Println()
  for run := 1; run <= 3; run++ {
    my_array := make([]int, n)
    fmt.Printf("Filling go array with 5M integers ...")
    start_time := time.Now()
    for i := 0; i < n; i++ {
      my_array[i] = i
    }
    elapsed_time := time.Since(start_time)
    fmt.Printf("one in %dms\n", int(elapsed_time / time.Millisecond))
  }
  fmt.Println()
}
