/*
*
*	pascal.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

#include <stdio.h>
#include "alias.h"
program
begin
output ("\n");
output ("	Type int has a size of %d bytes.\n",sizeof(int));
output ("	Type char has a size of %d byte.\n",sizeof(char));
output ("	Type short has a size of %d bytes.\n",sizeof(short));
output ("	Type long has a size of %d bytes.\n",sizeof(long));
output ("	Type float has a size of %d bytes.\n",sizeof(float));
output ("	Type double has a size of %d bytes.\n",sizeof(double));
output ("\n");
end

