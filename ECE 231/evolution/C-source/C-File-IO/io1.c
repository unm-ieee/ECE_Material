/*
 *  	File: io1.c
 *
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ?????? */

#include <stdio.h>
#include <stdlib.h>

main()
{ 
  float test = 0;

  //creates references to input and output files 
  FILE *ifp, *ofp;

  // sets mode to r - for "read"
  // the input and output file names are hard-coded in this example; not flexible
  // the user cannot change the file names unless he/she edits the program to change
  // the file nameseach time
  char *mode = "r";
  char outputFilename[] = "output.txt";

  ifp = fopen("input.txt", mode);

  if (ifp == NULL) 
  {
    fprintf(stderr, "Can't open input file in.list!\n");
  }

  //sets output file to w - for "write"
  ofp = fopen(outputFilename, "w");

  //scans input file and transfers floating-point data to output file
  // input file contains a collection of floating point numbers
  while (fscanf(ifp, "%f", &test) !=EOF)
  {
    fprintf(ofp, "%f\n", test);
  }

  fclose(ifp);
  fclose(ofp);
}

