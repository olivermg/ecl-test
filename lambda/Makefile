ECL = ecl
CLANG = clang
LLVMAS = llvm-as
LLVMLINK = llvm-link

main.bc: test.bc
	$(LLVMLINK) -o main.bc $^

%.bc: %.ll
	$(LLVMAS) $<

%.ll: %.c
	$(CLANG) -emit-llvm -S -o $@ $<

%.c: %.lisp
	$(ECL) -c $@ -h $@.h -data $@.data -compile $^

clean:
	rm -vf *.c *.h *.data *.bc *.ll *.fas

