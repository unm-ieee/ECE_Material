/*
 *  File: display.c
 *
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */






/* display.c: File display program */
/* Prompt user for file and display it 20 lines at a time*/

#include <stdio.h>

 main() 
{ 
	FILE *fopen(), *fp; 
	int c ,  linecount; 
	char filename[40], reply[40];

	printf("Enter file name: "); 
	gets( filename ); 

	fp = fopen( filename, "r" );       /* open for reading */ 

	if ( fp == NULL )       /* check does file exist etc */ 
	{ 
		printf("Cannot open %s for reading \n", filename ); 
			fclose( fp ); 
            getch();
		exit(1);      /* terminate program */ 
	} 

	linecount = 1 ;

	reply[0] = '\0' ;
	c = getc( fp ) ;	      /* Read 1st character if any */ 
	while ( c != EOF &&  reply[0] != 'Q' && reply[0] != 'q') 
	{ 
		putchar( c ) ;		/* Display character */
		if ( c  ==  '\n'  )				
			linecount = linecount+ 1 ;

		if ( linecount == 20 )
		{
			linecount = 1 ;	
			printf("[Press Return to continue, Q to quit]");
			gets( reply ) ;
		}
		c = getc ( fp ); 
	} 
	fclose( fp ); 
	
}
