ECL = ecl

all: test.c

%.c: %.lisp
	$(ECL) -c $@ -compile $^

clean:
	rm -vf *.c *.fas

