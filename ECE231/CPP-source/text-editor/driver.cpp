/*-- driver.cpp -----------------------------------------------------------
  Driver program for TextEditor class.  It gets the name of a file to
  be edited from the user, appends ".out" for the output file, builds
  a TextEditor object editor for these files, and sends it the run()
  message.
 -------------------------------------------------------------------------*/

#include <iostream>
#include <string>
using namespace std;

#include "TextEditor.h"
int main()
{
  string inFileName,
         outFileName;
  cout << "Enter the name of the input file: ";
  getline(cin, inFileName);
  outFileName = inFileName +".out";
  cout << "The output file is " << outFileName << "\n\n";
  TextEditor editor(inFileName, outFileName);
  editor.run();

  return 0;
}
