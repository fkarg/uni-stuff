import sys
from queue import PriorityQueue


if __name__ == '__main__':

    # look for given k
    if len(sys.argv) != 2:
        print("Usage: ./" + sys.argv[0] + " <int>")
        sys.exit(1)

    # create 'Prioritäts-Würgeschlange'
    pq = PriorityQueue()

    # assuming the file-format is correct ...
    with open("../blatt-08/cities.txt") as f:
        for line in f:
            (name, country, size, loc1, loc2) = line.split("\t")
            # the key is the reverse size of the city -> biggest first
            pq.put((1.0 / (int(size) + 1), line))

    # output the <k> first (biggest) cities
    for e in range(int(sys.argv[1])):
        (k, v) = pq.get()
        print(v)
