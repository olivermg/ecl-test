#include <stdio.h>
#include <ecl/ecl.h>
#include "test.h"

int main(int argc, char* argv[]) {
	printf("starting...\n");
	cl_funcall(2, c_string_to_object("CL-USER:LISPMAIN"), MAKE_FIXNUM(555));
	printf("...done\n");
}

