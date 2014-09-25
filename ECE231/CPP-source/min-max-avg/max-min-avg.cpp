/*--------------------------------------------------------------------------
   Read numeric data stored in a file, compute the minimum, maximum, and
   average of the numbers, and write these statistics to an output file.
 
   Input(keyboard): names of the input and output files
   Input(file):     a sequence of numeric values
   Output(file):    a count of the values, the minimum value,
                     the maximum value, and the average value
--------------------------------------------------------------------------*/

#include <iostream>                   // cin, cout
#include <fstream>                    // ifstream, ofstream
#include <string>                     // string, getline()
#include <cassert>                    // assert()
#include <cfloat>                     // DBL_MIN and DBL_MAX
using namespace std;

int main()
{
   cout << "This program computes the number, maximum, minimum, and\n"
           "average of an input list of numbers in one file,\n"
           "and places its results in another file.\n\n";

   // ----------- Input Section -----------------------------------

   cout << "Enter the name of the input file: ";
   string inputFileName;
   getline(cin, inputFileName);           // get name of input file
                                          // open an input stream 
   ifstream fin;                          //  to the input file,
   fin.open(inputFileName.data());        //  establish a connection,
   assert( fin.is_open() );               //  and check for success

   int count = 0;                         // number of values
   double reading,                        // value being processed
          maximum = DBL_MIN,              // largest seen so far
          minimum = DBL_MAX,              // smallest seen so far
          sum = 0.0;                      // running total 

   for (;;)                               // loop:
   {
      fin >> reading;                     //  read a value from file

      if ( fin.eof() ) break;             //  if eof, quit

      count++;                            //  update: count,
      sum += reading;                     //          sum,
      if (reading < minimum)    
         minimum = reading;               //          minimum,
      if (reading > maximum)
         maximum = reading;               //          maximum
   }                                      // end loop

   fin.close();                           // close the connection

   // ------------ Output Section ---------------------------------

   cout << "Enter the name of the output file: ";
   string outputFileName;
   getline(cin, outputFileName);
                                          // open an output stream
   ofstream fout(outputFileName.data());  //  to the output file,
                                          //  establish a connection,
   assert( fout.is_open() );              //  and check for success
                                          // write results to file
   fout << "\n--> There were " << count << " values";

   if (count > 0)
      fout << "\n    ranging from " << minimum
                << " to " << maximum
                << "\n    and their average is " << sum / count
                << endl;

   fout.close();                       // close the stream

   cout << "Processing complete.\n";
   return 0;
}
