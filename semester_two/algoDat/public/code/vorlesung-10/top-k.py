from queue import PriorityQueue
import sys


if __name__ == "__main__":
    k = 10 if len(sys.argv) < 2 else int(sys.argv[1])
    pq = PriorityQueue()
    with open("cities.txt") as f:
        for line in f:
            (city, country, population, latitute, longtude) = line.split("\t")
            population = int(population)
            if pq.qsize() < k:
                pq.put((population, city, country))
            else:
                if population > pq.queue[0][0]:
                    pq.get()
                    pq.put((population, city, country))
    for (population, city, country) in reversed(sorted(pq.queue)):
        print("%s\t%s\t%d" % (city, country, population))
