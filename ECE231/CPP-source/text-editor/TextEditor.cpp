/*-- TextEditor.cpp -------------------------------------------------------

   Contains definitions of the function members of class TextEditor.
 -------------------------------------------------------------------------*/

#include <iostream>
#include <string>
#include <cctype>
using namespace std;

#include "TextEditor.h"

//--- Utility function to eat spaces from cin
void eatBlanks()
{
  char blank;
  while (cin.peek() == ' ')
    cin.get(blank);
}

//--- Definition of constructor
TextEditor::TextEditor(string inputFile, string outputFile)
{
  myInstream.open(inputFile.data());
  myOutstream.open(outputFile.data());
  if (!myInstream.is_open() || !myOutstream.is_open())
  {
    cerr << "Error in opening files.";
    exit(-1);
  }
}

//--- Definition of run()
void TextEditor::run()
{
  showMenu();
  cout << "Enter an editing command following each prompt >\n\n";
  getline(myInstream, myLine);
  cout << "TEXT: "  << myLine << endl;
  char command;
  string str1, str2;
  for (;;)
  {
    if (myInstream.eof()) break;
    cout << '>';
    cin >> command; 
    cin.ignore(1, '\n');
    switch(toupper(command))
    {
      case 'I' : eatBlanks();
                 getline(cin, str1);
                 cout << "Insert before what string? "; 
                 getline(cin, str2);
                 insert(str1, str2);
                 break;
      case 'D' : eatBlanks();
                 getline(cin, str1);
                 erase(str1);
                 break;
      case 'R' : eatBlanks();
                 getline(cin, str1);
                 cout << "With what? "; 
                 getline(cin, str2);
                 replace(str1, str2);
                 break;
      case 'N' : next();
                 break;
      case 'Q' : quit();
                 break;
      default :  cout << "\n*** Illegal command ***\n";
                 showMenu();
                 cout << "TEXT:" << myLine << endl;
    }// end of switch

    if (!myInstream.eof())
      cout << "TEXT: " << myLine << endl;
  }
  cout << "\n*** Editing complete ***\n";
}

//--- Definition of showMenu
void TextEditor::showMenu()
{
  cout << "Editing commands are:\n"
          "  I str: Insert string str before another string\n"
          "  D str:   Delete string str\n"
          "  R str:   Replace string str with another string\n"
          "  N :      Get next line of text\n"
          "  Q :      Quit editing\n";
}

//--- Definition of insert()
void TextEditor::insert(string str1, string str2)
{
  int position = myLine.find(str2);
  if (position != string::npos)
    myLine.insert(position, str1);
  else
    cout << str2 << " not found\n";
}

//--- Definition of erase()
void TextEditor::erase(string str)
{
  int position = myLine.find(str);
  if (position != string::npos)
    myLine.erase(position, str.length());
  else
    cout << str << " not found\n";
}

//--- Definition of replace()
void TextEditor::replace(string str1, string str2)
{
  int position = myLine.find(str1);
  if (position != string::npos)
    myLine.replace(position, str1.length(), str2);
  else
    cout << str1 << " not found\n";
}

//--- Definition of next()
void TextEditor::next()
{
  myOutstream << myLine << endl;
  getline(myInstream, myLine);
  cout << "\nNext line:\n";
}

//--- Definition of quit()
void TextEditor::quit()
{
  myOutstream << myLine << endl;
  for (;;)
  {
    getline(myInstream, myLine);
    if (myInstream.eof()) break;
    myOutstream << myLine << endl;
  }
}
