#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>
#include <string.h>
int o;
main()
{
    double raisetopower, x, y, r, theta;
    double real1, imag1, real2, imag2, d, e, f, g, mag, pha, pwr, rot, pc, cp;
    char *in, *out;
    char reading [255];
    double filesize;
    char *ascii;
	int L[1000],i=0;
    FILE *input, *output;                    //reading & writing
    size_t userinput, useroutput;            //size of filename
    input = fopen ("input.txt", "rb");     // rb... open file for reading
    double u, p, t;

	while((getc(input))!=EOF)
	{
		fseek ( input, -1, SEEK_CUR );   		
		fscanf(input,"%s", reading) ;     // fgets (reading, 255, input);
        L[i] = strtod (reading, &ascii);
   		i++;
	}

	u = L[1];
	o = u;
	printf("%i\n",o);
}
