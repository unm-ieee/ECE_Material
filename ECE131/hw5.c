/*#########################
#Steven Seppala		  #
#Hw #5			  #
#ECE 131 Prof. Caudell	  #
#24 April 2011		  #
##########################*/

#include <stdio.h>
int main (void)
{
int squee[10][10] = {{0,1,2,3,4,5,6,7,8,9},{1,2,3,4,5,6,7,8,9,0},{2,3,4,5,6,7,8,9,0,1},{3,4,5,6,7,8,9,0,1,2},{4,5,6,7,8,9,0,1,2,3},{5,6,7,8,9,0,1,2,3,4},{6,7,8,9,0,1,2,3,4,5},{7,8,9,0,1,2,3,4,5,6},{8,9,0,1,2,3,4,5,6,7},{9,0,1,2,3,4,5,6,7,8}};
int a, b, squiggz; // declare possible variables to use but do not give them any memory so as to input values later
for (a=0 ; a<=8 ; a++)  
{
	printf("\n"); // to make sure that the output line is on it's own line and not on the command line
	for (b=0 ; b<=8 ; b++)
	//printf("%i", squee[a][b]);  //comment this out when done testing the array is consistant
		if ( a<=8, b<=8)		
			printf("%i ", squee[a][b] + squee[a+1][b] + squee[a][b+1] + squee[a+1][b+1]) ; // adding one to each element adds a 2x2 square
		
}
printf("\n"); //new line prevents command input line from being on the same line as the output
}

