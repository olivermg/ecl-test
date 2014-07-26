#include <stdio.h>
#include <ecl/ecl.h>

int main( int argc, char* argv[] )
{
	cl_boot( argc, argv );

	extern void init_lib_HELLO( cl_object );
	ecl_init_module( NULL, init_lib_HELLO );

	cl_eval( c_string_to_object( "(laberbla)" ) );

	cl_shutdown();

	return 0;
}

