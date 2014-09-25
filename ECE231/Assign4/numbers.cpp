#include "numberfunctions.cpp"


main(int argc, char *argv[]) 
{
    float array,temp,*inputs,foo,*sorting;
    int length,i;
	// checking for four command line arguments
    switch (argc)
	{
		case 2:
			fprintf( stderr,"Error: Please also provide output filenames\n");
			return(1);
		case 5:
			break; // have input file and output files; all is OK
		default:
			fprintf( stderr,"Error: Please provide ONE input and THREE output filenames respectively as command line arguments\n");
			return(1);
	}
    ifstream inputf(argv[1]);  											//Pointer to the input filepath
    ofstream outputf1(argv[2]),outputf2(argv[3]),outputf3(argv[4]); 	//Pointer to the output filepath
    DSP1 D function;
	//  make sure the input file opens
          if((inputf)==NULL)
    { 
              fprintf(stderr,"Error opening input file file. Check permissions.\n");
	          return(1);
    } 
	//  make sure the output files open
          if((outputf1)==NULL)
    { 
              fprintf(stderr,"Error opening output file one. Check permissions.\n");
              return(1);
    } 
         if((outputf2)==NULL)
    { 
              fprintf(stderr,"Error opening output file two. Check permissions.\n");
              return(1);
    } 
         if((outputf3)==NULL)
    { 
              fprintf(stderr,"Error opening output file three. Check permissions.\n");
              return(1);
    } 
                length = 0;
           while (!inputf.eof())
                {
                    inputf >> foo;
                    length +=1;
                }
 
                inputs = new float[length];
                inputf.clear();
                inputf.seekg(0, std::ios_base::beg);
 
                for ( i=0;i<length;i++)
                {
                        inputf >> array;
                        inputs[i] = array;
                }
 
                function.storearray (inputs, length);

                temp = function.max();
                outputf1 << "The max is: " << temp << "\n";
                temp = function.min();
                outputf1 << "The min is: " << temp << "\n";
                temp = function.avg();
                outputf1 << "The average is: " << temp << "\n";
                temp = function.var();
                outputf1 << "The variance is: " << temp << "\n";
                temp = function.standev();
                outputf1 << "The standard deviation is: " << temp << "\n";
               

				outputf3 << "The sorted list is as follows: \n\n";
				function.sort();
				for (i=0; i < length ; i ++)			
				{
				outputf2 << "\n" << sorting[i] ;
				}
		
return(0);
}
