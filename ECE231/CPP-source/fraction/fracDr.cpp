// Test driver
#include <iostream>
#include <fstream>
#include <string>
#include "frac.h"
int main()
{
  using namespace std;
  ifstream inFile;       // file containing operations
  ofstream outFile;      // file containing output
  string inFileName;     // input file external name
  string outFileName;    // output file external name
  string outputLabel;     
  string command;        // operation to be executed
  int numCommands;
  FractionType fraction;
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
    if (command == "Initialize")
    {
      int numerator, denominator;
      inFile  >> numerator;
      inFile  >> denominator;
      fraction.Initialize(numerator, denominator);
      outFile <<  "Numerator: "  << fraction.NumeratorIs() 
              <<   " Denominator: " << fraction.DenominatorIs() << endl;
    }
    else if (command == "NumeratorIs")
      outFile <<  "Numerator: "  << fraction.NumeratorIs() << endl;
    else if (command == "DenominatorIs")
      outFile << "Denominator: " << fraction.DenominatorIs() << endl;
    else if (command == "IsZero")
      if (fraction.IsZero())
        outFile << "Fraction is zero " << endl;
      else
        outFile << "Fraction is not zero " << endl;
    else if (command == "IsNotProper")
      if (fraction.IsNotProper())
        outFile << "Fraction is improper " << endl;
      else
        outFile << "Fraction is proper " << endl;
    else
    {
      outFile << "Whole number is " << fraction.ConvertToProper() 
              << endl;
      outFile <<  "Numerator: "  << fraction.NumeratorIs() 
              <<   " Denominator: " << fraction.DenominatorIs() << endl;

    }

    numCommands++;
    cout << "Command number " << numCommands << " completed." 
         << endl;
    inFile >> command;
  };
  
  cout << "Testing completed."  << endl;
  return 0;
}

