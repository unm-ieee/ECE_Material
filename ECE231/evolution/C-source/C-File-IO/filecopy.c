/*
 *  File: filecopy.c
 *
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */


/* Copy file.c to test.txt  */ 

#include <stdio.h>
 main()  
{
	FILE *fp1, *fp2, *fopen(); 
	int c ; 

	fp1 = fopen( "file.c",  "r" );       /* open for reading */ 
	fp2 = fopen( "test.txt", "w" ) ;   /* open for writing */	

	if ( fp1 == NULL )      /* check does file exist etc */ 
	{ 
		printf("Cannot open file.c for reading \n" ); 
		exit(1);    /* terminate program */ 
	} 
	else if ( fp2 == NULL ) 
	{ 
		printf("Cannot open text.txt for writing \n"); 
		exit(1);    /* terminate program */ 
	} 
	else 		/* both files O.K. */
	{
		c = getc(fp1) ;		 
		while ( c != EOF) 
		{ 
			putc( c,  fp2);    /* copy to text.txt */ 
			c =  getc( fp1 ) ;
		} 

	fclose ( fp1 ); 		/* Now close files */
	fclose ( fp2 ); 
	printf("Files successfully copied \n");
	} 
}
 
