// Step 10:
// In addition to C pointers, C++ introduces a new concept called a "reference".
// While serving much the same purpose as pointers, it gives added power and
// control, but with some restrictions.  It plays a key role in the C++
// operators such as <<, which is why they can be chained as in the tostring
// function.

#include <iostream>
#include <sstream>
#include <string>
using namespace std;

class Person
{

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

Person::Person(string iName, int iAge, int iHeight, int iWeight, bool iAlive)
    : name(iName), age(iAge), height(iHeight), weight(iWeight), alive(iAlive)
{
}

Person::Person()
    : name("No Name"), age(0), height(0), weight(0), alive(false)
{
}

string Person::tostring()
{
    stringstream ss;
    
    ss << "Name: " << name << "; age: " << age << "; ht: "
       << height << "; wt: " << weight << "; living? "
       << (alive ? "Yes" : "No");

    return ss.str();     // Return the string component of the stringstream
}

int main()
{
    Person jane("Jane Doe", 37, 64, 115, true);
    Person john("John Smith", 87, 70, 180, false);

    // We will use a pointer for jane and a reference for john
    Person* pjane = &jane;
    Person& rjohn = john;

    // since pjane is a pointer, we use it like one
    string ident = pjane->tostring();
    cout << "Jane ==> " << ident << endl;
    
    // But a reference "looks" like the original object
    ident = rjohn.tostring();
    cout << "John ==> " << ident << endl;

    return 0;
}

