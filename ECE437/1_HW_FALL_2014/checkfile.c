#include <stdio.h> 

int main(void) 
{ 

	FILE *fd; 

	if ((fd=fopen("MyOSclass","rw"))==NULL)
		printf("\n Program Failed, figure out why...\n"); 

	else 
	{ 
		fclose(fd); 
		printf("\n Program ran successfully \n"); 
	 } 

} 
