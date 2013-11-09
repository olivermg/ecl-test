#include <stdio.h>
#include <ecl/ecl.h>
#include "test.h"

int main(int argc, char* argv[]) {
	printf("starting...\n");
	cl_boot(argc, argv);
	cl_funcall(1, c_string_to_object("CL-USER:LISPMAIN"));
	//cl_safe_eval(c_string_to_object("(lispmain)"), Cnil, Cnil);
	cl_shutdown();
	printf("...done\n");
}

