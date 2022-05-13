#include <defs.h>
#include <stub.c>

void main()
{
	
	// reg_mprj_io_0 =  GPIO_MODE_USER_STD_OUTPUT;
	reg_mprj_io_0 = GPIO_MODE_USER_STD_INPUT_PULLUP;
	reg_mprj_io_1 =  GPIO_MODE_USER_STD_OUTPUT;
	// reg_mprj_io_2 =  GPIO_MODE_USER_STD_OUTPUT;
	// reg_mprj_io_3 =  GPIO_MODE_USER_STD_OUTPUT;
	// reg_mprj_io_4 =  GPIO_MODE_USER_STD_OUTPUT;
	// reg_mprj_io_5 =  GPIO_MODE_USER_STD_OUTPUT;
	// reg_mprj_io_6 =  GPIO_MODE_USER_STD_OUTPUT;
	// reg_mprj_io_7 =  GPIO_MODE_USER_STD_OUTPUT;

	reg_mprj_xfer = 1;
	while (reg_mprj_xfer == 1);
}