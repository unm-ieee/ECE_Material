// Step 11:
// Now that we have the concept of references under control, we can add one
// of the most powerful concepts in C++, operator overloading.  We will
// overload the >> operator to allow streaming of Person objects directly.
// We also introduce the "this" variable, a pointer to the bound object.

#include <iostream>
#include <sstream>
#include <string>
#include <ostream>     // We need this for overloading <<
using namespace std;

class Person
{
    // The "friend" attribute gives operator<< access to Person's private data
    // operator<< is not part of the Person class; this declaration
    // says we're going to "overload" it and give it access to Person data.
    // The object to be streamed is passed as const reference.  The const
    // attribute guarantees that we won't modify it.
    friend ostream& operator<<(ostream& ostr, const Person& P);

    private:
    string name;
    int  age;
    int  height;
    int  weight;
    bool alive;

    public:

    string tostring();

    Person(string iName, int iAge, int iHeight, int iWeight, bool iAlive);

    Person();
};


// This is the implementation of the overloading of the << operator
// When the compiler sees a << operator that includes a reference to a
// Person object, this function will be called.  For "chaining", it
// must return a reference to an ostream object.
//
ostream& operator<<(ostream& ostr, const Person& P)
{
    ostr << "Name: " << P.name << "; age: " << P.age << "; ht: "
       << P.height << "; wt: " << P.weight << "; living? "
       << (P.alive ? "Yes" : "No");
    return ostr;
}

string Person::tostring()
{
    stringstream ss;

    // "this" is a pointer to the object to which the function is bound
    ss << *this;

    return ss.str();     // Return the string component of the stringstream
}

Person::Person(string iName, int iAge, int iHeight, int iWeight, bool iAlive)
    : name(iName), age(iAge), height(iHeight), weight(iWeight), alive(iAlive)
{
}

Person::Person()
    : name("No Name"), age(0), height(0), weight(0), alive(false)
{
}

int main()
{
    Person jane("Jane Doe", 37, 64, 115, true);
    Person john("John Smith", 87, 70, 180, false);

    cout << "Jane ==> " << jane << endl;
    cout << "John ==> " << john << endl;

    return 0;
}

