PYTHON = python3
CHECKSTYLE = flake8
PYTHON_FILES = $(shell find . -name "*.py")

all: compile test checkstyle

compile:
	$(PYTHON) -m py_compile $(PYTHON_FILES)

test: test-doctests

test-doctests:
	@echo "Running doctests using discovery"
	$(PYTHON) -m doctest $(PYTHON_FILES)

checkstyle:
	$(CHECKSTYLE) $(PYTHON_FILES)

clean:
	find . -name "*.pyc" | xargs rm -f
	find . -name "__pycache__" | xargs rm -rf
