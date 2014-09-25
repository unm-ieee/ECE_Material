// Step 14
// Object Oriented Programming (OOP) allows us to create classes that are
// derived from existing classes.  We have been using one such
// method of doing so by defining Person as being "composed" of, among other
// types, a string.  Indeed, Composition is the most common means of designing
// classes based on other classes.  The composition relationship is sometimes
// called the "has-a" relationship.  That is, a Person "has a" name.
//
// Here we introduce the other common technique. A class can "inherit" all the 
// features of an existing class, and adding some attributes of its own.

#include <iostream>
#include <sstream>
#include <string>
#include <ostream>     // We need this for overloading <<
using namespace std;

class Person
{
    friend ostream& operator<<(ostream& ostr, const Person& P);

    // For inherited classes to have access to "super" classes' members, they
    // must be marked "protected".  Inherited classes do not have access to 
    // private data.
    protected:
    string name;
    int  age;
    int  height;
    int  weight;
    bool alive;

    public:

    string getName();
    void   setName(string name);
    int    getAge();
    void   setAge(int age);
    int    getWeight();
    void   setWeight(int weight);
    int    getHeight();
    void   setHeight(int height);
    bool   isAlive();
    void   setAlive(bool alive);
    float  getBMI();

    string tostring();

    Person(string iName, int iAge, int iHeight, int iWeight, bool iAlive);

    Person();
};

// We introduce the Instructor class.  All belief to the contrary notwithstanding,
// we base the design on the assumption that an Instructor is a Person.  In contrast
// with the "has-a" relationship, we say that inheritance uses an "is-a" relationship.
// That is, an Instructor "is a" Person.
class Instructor : public Person
{
    private:
    string department;
    int    yearsOfService;

    public:
    void   setDepartment(string dept);
    string getDepartment();
    void   setYearsOfService(int years);
    int    getYearsOfService();

    Instructor();
    Instructor(string iName, int iAge, int iHeight, int iWeight, bool iAlive,
               string iDepartment, int iYearsOfService);

};

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

// Instructor's Accessor implementations; nothing particularly interesting here
void Instructor::setDepartment(string dept)
{
    department = dept;
}

string Instructor::getDepartment()
{
    return department;
}

void Instructor::setYearsOfService(int years)
{
    yearsOfService = years;
}

int Instructor::getYearsOfService()
{
    return yearsOfService;
}

Instructor::Instructor(string iName, int iAge, int iHeight, int iWeight, bool iAlive,
               string iDepartment, int iYearsOfService)
    // Here we have to initialize the parent class (Person) before proceeding with the
    // child class (Instructor)
    : Person(iName, iAge, iHeight, iWeight, iAlive), department(iDepartment),
      yearsOfService(iYearsOfService)
{
}

Instructor::Instructor()
    : Person("No Name", 0, 0, 0, false), department(""), yearsOfService(0)
{
}

int main()
{
    Instructor drDoe("Jane Doe", 37, 64, 115, true, "ECE", 12);
    Instructor drSmith("John Smith", 87, 70, 180, false, "SOE", 3);

    cout << "Dr. Doe ==> " << drDoe << "; BMI = " << drDoe.getBMI() << endl;

    return 0;
}

