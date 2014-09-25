// Step 8:
// We need to move away from C strings and C I/O, but we have to do it in
// bite-size chunks.  First we introduce the << operator to replace the printf
// function for outputting.  Just as C programs automatically get stdin,
// stdout, and stderr FILE pointers, so do C++ programs automatically get
// "streams" cin, cout, and cerr.

// We include the iostream header.  Note the absence of the .h extension
#include <iostream>    // For cin, cout, and cerr
#include <stdio.h>     // We still need stdio.h for this step, due to sprintf
#include <string.h>    // For string handling support

// Namespaces are a C++ feature that allows you to manage the problem of
// having multiple definitions for a single name.  You've seen one use of
// namespaces: the prefix "Person::" alludes to the fact that classes have
// their own namespaces.  Other namespaces exist, as well.  When you
// #include a header file like <iostream> above, you bring in the "std"
// namespace.  Without the following line, references to cout would need
// the std:: prefix, as "std::cout".  To keep things simple for now,
// just always include this line.  Later we'll see reasons for not doing so.
using namespace std;

#define NAME_SIZE 40

class Person
{
    private:
    char name[NAME_SIZE];
    int  age;
    int  height;
    int  weight;
    bool alive;

    public:

    void tostring(char* out);

    Person(const char* iName, int iAge, int iHeight, int iWeight, bool iAlive);

    Person();
};

Person::Person(const char* iName, int iAge, int iHeight, int iWeight, bool iAlive)
{
    strcpy(name, iName);
    age    = iAge;
    height = iHeight;
    weight = iWeight;
    alive  = iAlive;
}

Person::Person()
{
    strcpy(name, "No Name");
    age    = 0;
    height = 0;
    weight = 0;
    alive  = false;
}

void Person::tostring(char* out)
{
    sprintf(out, "Name: %s; age: %d; ht: %d; wt: %d; living? %s",
            name, age, height, weight,
            alive ? "Yes" : "No");
}

int main()
{
    Person jane("Jane Doe", 37, 64, 115, true);
    Person john("John Smith", 87, 70, 180, false);

    char ident[1000];   // Big enough for anyone

    jane.tostring(ident);

    // The << operator takes data from its right operand and "streams" the data 
    // to its left operand.  The operand can be "chained".  "endl" is a stream
    // "manipulator" that adds a newline and flushes the string.
    cout << "Jane ==> " << ident << endl;
    john.tostring(ident);
    cout << "John ==> " << ident << endl;

    return 0;
}

