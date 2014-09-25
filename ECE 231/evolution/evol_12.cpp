// Step 12:
// Now that our member data is private, we'd like to be able to modify 
// and read it.  We'd also like to use computed data as if it were 
// member data.  There are no C++ standards on how to do any of this, but
// there is "common practice".  The common practice is to implement a 
// suite of accessors, also called "getters" and "setters", after the commonly
// used names.

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

    // Accessors:
    string getName();
    void   setName(string name);
    int    getAge();
    void   setAge(int age);
    int    getWeight();
    void   setWeight(int weight);
    int    getHeight();
    void   setHeight(int height);
    bool   isAlive();              // bools are often accessed with "is..."
    void   setAlive(bool alive);
    float  getBMI();               // BMI will be computed "on the fly"
                                   // An alternative approach might be to
                                   // create a bmi member and update it on
                                   // setHeight() and setWeight().

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

string Person::getName()
{
    return name;
}

void   Person::setName(string name)
{
    // Because the parameter and the member have the same name, you
    // must disambiguate.  Remember that C/C++ defaults to the symbol
    // with the innermost scope; in this case it's the "name" that is
    // passed as a parameter.
    this->name = name;
}

int    Person::getAge()
{
    return age;
}

void   Person::setAge(int age)
{
    this->age = age;
}

int    Person::getWeight()
{
    return weight;
}

void   Person::setWeight(int weight)
{
    this->weight = weight;
}

int    Person::getHeight()
{
    return height;
}

void   Person::setHeight(int height)
{
    this->height = height;
}

bool   Person::isAlive()
{
    return alive;
}

void   Person::setAlive(bool alive)
{
    this->alive = alive;
}

float  Person::getBMI()
{
    // Formula from www.bmi-calculator.net/bmi-formula.php
    return ((float)weight/(height*height))*703;
}

int main()
{
    Person jane("Jane Doe", 37, 64, 115, true);
    Person john("John Smith", 87, 70, 180, false);

    cout << "Jane ==> " << jane << "; BMI = " << jane.getBMI() << endl;
    cout << "John ==> " << john << endl;

    return 0;
}

