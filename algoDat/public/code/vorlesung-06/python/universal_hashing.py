"""
Copyright 2017, University of Freiburg,
Chair of Algorithms and Data Structures.
Author: Hannah Bast <bast@cs.uni-freiburg.de>
"""


def collision_probability(x, y, m):
    """
    Collision probability for Negativbeispiel 1.

    >>> collision_probability(1, 2, 5)
    0.2
    >>> collision_probability(2, 2, 5)
    1.0
    """
    num_collisions = 0
    for a in range(0, m):
        hx = a * x % m
        hy = a * y % m
        if hx == hy:
            num_collisions += 1
    return num_collisions / m


def histogram(collision_probability_function, m, u, num_buckets):
    """
    Compute histogram of collision probabilities of all key pairs x, y
    with x != y.

    >>> histogram(lambda x, y, m: 0.3, 10, 100, 5)
    [0, 9900, 0, 0, 0]
    """
    counts = [0] * num_buckets
    for x in range(0, u):
        for y in range(0, u):
            if x != y:
                p = collision_probability_function(x, y, m)
                if p < 1:
                    bucket_index = int(p * num_buckets)
                else:
                    bucket_index = num_buckets - 1
                counts[bucket_index] += 1
    return counts


if __name__ == "__main__":
    m = 16
    u = 128
    counts = histogram(collision_probability, m, u, 256)
    for i, count in enumerate(counts):
        print("%f\t%d" % (i / 256, count))
