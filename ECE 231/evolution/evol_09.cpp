// Step 9:
// The next step is to eliminate traditional C strings and introduce the C++
// string class.  We now have a "pure" C++ program, with no C library presence.
// Now we can introduce a cleaner way of initalizing data in a constructor.

#include <iostream>    // For cin, cout, and cerr
#include <sstream>     // This is a "string stream", to replace sprintf
#include <string>      // Note the missing .h extension
using namespace std;

// C++ strings are self-sizing, so we don't need the name size limit any more

class Person
{
    private:
    string name;            // A C++ string now, not a char array
    int  age;
    int  height;
    int  weight;
    bool alive;

    public:

    // Again, we have eliminated C char pointers in favor of C++ strings
    string tostring();

    Person(string iName, int iAge, int iHeight, int iWeight, bool iAlive);

    Person();
};

// This is the other way of initalizing data.  We could not use this approach
// earlier because there's no provision for using the strcpy function in the
// : operator
Person::Person(string iName, int iAge, int iHeight, int iWeight, bool iAlive)
    : name(iName), age(iAge), height(iHeight), weight(iWeight), alive(iAlive)
{
}

// Here's the default constructor, constructed similarly
Person::Person()
    : name("No Name"), age(0), height(0), weight(0), alive(false)
{
}

string Person::tostring()
{
    // The stringstream class is a C++ means for formatting data to a string
    // object, with the same intent as C's sprintf function.  As such, it
    // recognizes (we say "supports" or "implements") the << operator

    stringstream ss;
    
    ss << "Name: " << name << "; age: " << age << "; ht: "
       << height << "; wt: " << weight << "; living? "
       << (alive ? "Yes" : "No");

    // Return the string component of the stringstream object
    return ss.str();
}

int main()
{
    Person jane("Jane Doe", 37, 64, 115, true);
    Person john("John Smith", 87, 70, 180, false);

    Person noone;

    // We replace the char array with a string object
    string ident = jane.tostring();

    cout << "Jane ==> " << ident << endl;
    ident = john.tostring();
    cout << "John ==> " << ident << endl;
    ident = noone.tostring();
    cout << "noone==> " << ident << endl;

    return 0;
}

