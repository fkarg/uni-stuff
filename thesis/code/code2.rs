use rayon::prelude::*;

let otherlist = somelist.par_iter()
                        .map(|&v| heavy_operation(v)).collect();
