CC = clang
ECL = ecl
ECLCONFIG = ecl-config

.PHONY: clean

main: main.o hello.a
	$(CC) `$(ECLCONFIG) --ldflags` -o $@ $^

main.o: main.c
	$(CC) `$(ECLCONFIG) --cflags` -o $@ -c $<

hello.a: hello.lisp
	$(ECL)	-eval '(require :asdf)' \
		-eval '(pushnew "./" asdf:*central-registry*)' \
		-eval '(asdf:make-build :hello :type :static-library :move-here "./$@")' \
		-eval '(quit)'

clean:
	rm -vf *.a *.o main

