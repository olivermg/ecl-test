ECL = ecl
CC = clang
CFLAGS = -I/usr/local/include
LDFLAGS = -L/usr/local/lib
LIBS = -lecl

test: test.o main.o
	$(CC) $(LDFLAGS) -Wall main.o test.o -o test $(LIBS)

test.o: test.c
	$(CC) $(CFLAGS) -Wall -c test.c -o test.o

test.c test.h: test.lisp
	$(ECL) -c test.c -h test.h -data test.data -compile test.lisp

main.o: main.c test.h
	$(CC) $(CFLAGS) -Wall -c main.c -o main.o

clean:
	rm -vf test.c test.h test.data test.fas test.o test
	rm -vf main.o
