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
	rm -f data.pdf

# To plot into file directly: "set term pdf; set output 'data.pdf';" and remove "pause mouse;".
plot:
	python3 balls_into_bins.py 50000 100 > bins.txt
	gnuplot -e "set style fill solid 0.4; plot [0:101] [0:600] 'bins.txt' with boxes; pause mouse;"	
