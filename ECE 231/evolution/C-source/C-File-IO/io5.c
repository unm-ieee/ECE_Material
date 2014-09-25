/*
 *  File: io5.c
 *
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ??? */


#include <stdio.h>
#include <math.h>

main(int argc, char *argv[]) //Argc is the number of arguments, and argv is the array containing those arguments
{
	FILE *inputf; //Pointer to the input filepath
	FILE *outputf; //Pointer to the output filepath
	
    int numbers = 0;
    float flotante;
    
	//Check to see that there are 2 command line arguments
	switch (argc)
	{
		case 2:
			fprintf(stderr,"Error: Please also provide an output filename\n");
			return(1);
		case 3:
			break;
		default:
			fprintf(stderr,"Error: Please provide input and output filenames respectively as command line arguments\n");
			return(1);
	}

	//Make sure the input file opens
	if((inputf=fopen(argv[1],"r"))==NULL)
	{
		fprintf(stderr,"Error opening file. Check permissions.\n");
		return(1);
	}

	//Make sure the output file opens
    if((outputf=fopen(argv[2],"w"))==NULL)
    {
            fprintf(stderr,"Error opening file. Check permissions.\n");
            return(1);
    }

  	while (fscanf(inputf,"%f", &flotante) != EOF)
    {
        /*        
         printf("count is = %d\n", count);
         printf("flotante is = %f\n", flotante);
         */
        numbers = numbers + 1;
        fprintf(outputf,"%f\n", flotante);
    }
    
  	printf("\nThe total number of floating points in the file are = %d\n", numbers);
  	
  	fclose(inputf);  // Closes the input file.
  	fclose(outputf);  // Closes output file - just as a best practice
  	

}

