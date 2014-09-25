/*-- TextEditor.h ---------------------------------------------------------
 
  This header file defines the data type TextEditor for editing text files.
  Basic operations are:
     Constructor:  Construct a TextEditor object for given files
     run()         Run the editor
     showMenu():   Display the menu of editing "hot keys"
     insert():     Insert a string in a line of text
     erase():      Remove a string from a line of text
     replace():    Replace a string by another string in a line of text
     next():       Output edited line and get next line to edit
     quit():       Wrap up editing
 -------------------------------------------------------------------------*/

#include <iostream>
#include <string>
#include <fstream>

class TextEditor
{
 public:
  /******** Function Members ********/
  TextEditor(string inputFile, string outputFile);
  /*----------------------------------------------------------------------
    Construct a text editor for files named inputFile and outputFile.

    Precondition:  inputFile is the file to be edited.
    Postcondition: outputFile contains the edited text.
    ----------------------------------------------------------------------*/ 
 
  void run();
  /*----------------------------------------------------------------------
    Run the editor.

    Precondition:  None.
    Postcondition: Text from inputFile has been edited and output to 
        outputFile.
  ----------------------------------------------------------------------*/ 

  void showMenu();
  /*----------------------------------------------------------------------
    Display menu of editing commands.

    Precondition:  None.
    Postcondition: Menu has been output to cout.
    ----------------------------------------------------------------------*/ 
 
  void insert(string str1, string str2);
  /*----------------------------------------------------------------------
    Insert a string into a line of text.

    Precondition:  None.
    Postcondition: str1 has been inserted before str2 in myLine if 
        str2 is found in myLine; otherwise, myLine is unchanged.
  ----------------------------------------------------------------------*/ 

  void erase(string str);
  /*----------------------------------------------------------------------
    Remove a string from a line of text.

    Preconditions: None.
    Postcondition: str has been removed from myLine if str is found 
        in myLine; otherwise, myLine is unchanged.
  ----------------------------------------------------------------------*/ 

  void replace(string str1, string str2);
  /*----------------------------------------------------------------------
    Replace one string with another in a line of text.

    Precondition:  None.
    Postcondition: str1 has been replaced with str2 in myLine if str1 
        is found in myLine; otherwise, myLine is unchanged.
  -----------------------------------------------------------------------*/ 

  void next();
  /*----------------------------------------------------------------------
    Move on to next line of text to edit.

    Precondition:  None.
    Postcondition: String that was in myLine has been output to 
        myOutstream and a new line read from myInstream into myLine.
   ----------------------------------------------------------------------*/ 

  void quit();
  /*----------------------------------------------------------------------
    Quit editing.

    Precondition:  None.
    Postcondition: String that was in myLine has been output to
        outputFile and any lines remaining in inputFile have been
        copied to outputFile.
   ----------------------------------------------------------------------*/ 

 private:
  /******** Data Members ********/
  ifstream myInstream;
  ofstream myOutstream;
  string myLine;
};
