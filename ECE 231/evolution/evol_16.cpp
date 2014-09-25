// Step 15
// Polymorphism is the ability of a member function in a derived class to be
// called from a pointer whose type is the super class.  It is best illustrated
// by example.

#include "stdafx.h"
#include <iostream>
#include <sstream>
#include <string>
#include <ostream>
#include <unistd.h>
using namespace std;

class Person
{
    friend ostream& operator<<(ostream& ostr, const Person& P);

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

    // Make Person an abstract class
    virtual void sayHello() = 0;

    Person(string iName, int iAge, int iHeight, int iWeight, bool iAlive);

    Person();
};

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

    void sayHello();   // Override's base class version

    Instructor();
    Instructor(string iName, int iAge, int iHeight, int iWeight, bool iAlive,
               string iDepartment, int iYearsOfService);

};

// Introduce a new subtype of Person
class Student : public Person
{
    public:

    void sayHello();   // Override's base class version

    Student();
    Student(string iName, int iAge, int iHeight, int iWeight, bool iAlive);

};

ostream& operator<<(ostream& ostr, const Person& P)
{
    ostr << "Name: " << P.name << "; age: " << P.age << "; ht: "
       << P.height << "; wt: " << P.weight << "; living? "
       << (P.alive ? "Yes" : "No");
    return ostr;
}

// Virtual and overriding functions
void Person::sayHello()
{
    cout << "Hi.  I'm somebody." << endl;
}

void Instructor::sayHello()
{
    cout << "Hi.  Pay attention." << endl;
}

void Student::sayHello()
{
    cout << "Hi.  Do we have class today?" << endl;
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

Student::Student(string iName, int iAge, int iHeight, int iWeight, bool iAlive)
    : Person(iName, iAge, iHeight, iWeight, iAlive)
{
}

Student::Student()
    : Person("No Name", 0, 0, 0, false)
{
}

// A function to show off polymorphism
void greet(Person* p)
{
    p->sayHello();
}

int main()
{
    Instructor* drDoe = new Instructor("Jane Doe", 37, 64, 115, true, "ECE", 12);
    Student*   smith  = new Student("John Smith", 87, 70, 180, true);

    // Because Person is abstract, the following line will generate a compile error
    // Person*     who   = new Person();

    greet(drDoe);
    greet(smith);
    
	usleep(30000);
    return 0;
}

