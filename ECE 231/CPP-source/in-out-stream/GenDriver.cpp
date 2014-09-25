// Test driver with instructions for filling in specific
//  information
#include <iostream>
#include <fstream>
#include <string>
// #include file containing class to be tested
int main()
{
  using namespace std;
  ifstream inFile;     // file containing operations
  ofstream outFile;    // file containing output
  string inFileName;   // input file external name
  string outFileName;  // output file external name
  string outputLabel;   
  string command;    // operation to be executed
  int numCommands;

  // Declare a variable of the type being tested
  // Prompt for file names, read file names, and prepare files
  cout << "Enter name of input file; press return." << endl;
  cin  >> inFileName;
  inFile.open(inFileName.c_str());
  
  cout << "Enter name of output file; press return." << endl;
  cin  >> outFileName;
  outFile.open(outFileName.c_str());
  
  cout << "Enter name of test run; press return." << endl;
  cin  >> outputLabel;
  outFile << outputLabel << endl;

  inFile >> command;
  numCommands = 0;
  while (command != "Quit")
  {

    // The following should be specific to structure being tested
    // Execute the command by invoking the member function of the
    //   same name
    // Print the results to the output file
    // The default option on the branching statement should be for
    // misspelled commands

    numCommands++;
    cout << "Command number " << numCommands << " completed." 
         << endl;
    inFile >> command;
  }
  
  cout << "Testing completed."  << endl;
  inFile.close();
  outFile.close();
  return 0;
}

