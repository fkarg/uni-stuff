COMPILE_CMD = python3 -m py_compile
TEST_CMD = python3 -m doctest
CHECKSTYLE_CMD = flake8

all: compile test checkstyle

compile:
	$(COMPILE_CMD) *.py

test:
	$(TEST_CMD) *.py

checkstyle:
	$(CHECKSTYLE_CMD) *.py

clean:
	rm -f *.pyc
	rm -rf __pycache__
	rm -f bins.txt
	rm -f buckets.txt
	rm -f data.pdf

plot:
	xdg-open *.png

# To plot into file directly: "set term pdf; set output 'data.pdf';" and remove "pause mouse;".
plot_new:
	# python3 balls_into_bins.py 50000 100 > bins.txt
	# gnuplot -e "set style fill solid 0.4; plot [0:101] [0:600] 'bins.txt' with boxes; pause mouse;"
	python3 universal_hashing.py 1 256 > buckets.txt
	gnuplot -e "set style fill solid 0.4; plot [0:256] [] 'buckets.txt' with boxes; set term Image; set outpot 'class_1.png';"
	python3 universal_hashing.py 2 256 > buckets.txt
	gnuplot -e "set style fill solid 0.4; plot [0:256] [] 'buckets.txt' with boxes; set term Image; set outpot 'class_2.png';"
	python3 universal_hashing.py 3 256 > buckets.txt
	gnuplot -e "set style fill solid 0.4; plot [0:256] [] 'buckets.txt' with boxes; set term Image; set outpot 'class_3.png';"
	python3 universal_hashing.py 5 256 > buckets.txt
	gnuplot -e "set style fill solid 0.4; plot [0:256] [] 'buckets.txt' with boxes; set term Image; set outpot 'class_5.png';"
