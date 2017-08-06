import time


def array_fill():
    cdef int my_array[1000* 1000]
    cdef int i = 0
    for i in range(0, 1000 * 1000):
        my_array[i] = i

if __name__ == "__main__":
    print()
    for run in range(0, 3):
        print("Filling Python array with 1M integers ... ", end="")
        start_time = time.time()
        array_fill()
        end_time = time.time()
        print("done in %dms" % (1000 * (end_time - start_time)))
    print()
