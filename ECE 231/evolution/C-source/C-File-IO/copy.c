/*
 *  File: copy.c
 *
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Copy source file to destination file */ 


#include <stdio.h>
 main()  
{
	FILE *fp1, *fp2, *fopen(); 
	int c ; 
	char fname1[40], fname2[40] ;

	printf("Enter source file:") ;
	gets(fname1);

	printf("Enter destination file:");
	gets(fname2);

	fp1 = fopen( fname1,  "r" );       /* open for reading */ 
	fp2 = fopen( fname2, "w" ) ; /* open for writing */	

	if ( fp1 == NULL )      /* check does file exist etc */ 
	{ 
		printf("Cannot open %s for reading \n", fname1 ); 
		exit(1);    /* terminate program */ 
	} 
	else if ( fp2 == NULL ) 
	{ 
		printf("Cannot open %s for writing \n", fname2 ); 
		exit(1);    /* terminate program */ 
	} 
	else 		/* both files O.K. */
	{
		c = getc(fp1) ;		/* read from source */
		while ( c != EOF) 
		{ 
			putc( c,  fp2);    /* copy to destination */ 
			c =  getc( fp1 ) ;
		} 

	fclose ( fp1 ); 		/* Now close files */
	fclose ( fp2 ); 
	printf("Files successfully copied \n");
	
	} 
}
