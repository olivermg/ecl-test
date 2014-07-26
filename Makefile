ECL = ecl
CC = clang
CFLAGS = -g -I/usr/local/include
LDFLAGS = -g -L/usr/local/lib
LIBS = -lecl

test: test.o main.o
	$(CC) $(LDFLAGS) main.o test.o -o test $(LIBS)

test.o: test.c
	$(CC) $(CFLAGS) -c test.c -o test.o

test.c test.h: test.lisp
	$(ECL) -c test.c -h test.h -data test.data -compile test.lisp

main.o: main.c test.h
	$(CC) $(CFLAGS) -c main.c -o main.o

clean:
	rm -vf test.c test.h test.data test.fas test.o test
	rm -vf main.o
	rm -vf *.core

