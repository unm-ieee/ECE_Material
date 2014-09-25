// Step 13:
// Demonstrate C (malloc/free) and C++ (new/delete/delete[]) memory allocation.
// Many applications do not know at compile time how many objects of a given type
// will be needed.  Both languages provide means for acquiring data from the operating
// system.

#include <iostream>
#include <sstream>
#include <string>
#include <ostream>     // We need this for overloading <<
using namespace std;

class Person
{
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
    bool   isAlive();
    void   setAlive(bool alive);
    float  getBMI();

    string tostring();

    Person(string iName, int iAge, int iHeight, int iWeight, bool iAlive);

    Person();
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

    ss << *this;

    return ss.str();
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
    return ((float)weight/(height*height))*703;
}

int main()
{
    Person jane("Jane Doe", 37, 64, 115, true);
    Person john("John Smith", 87, 70, 180, false);

    // C-style memory allocation and release use the functions malloc(), calloc(), and 
    // free().  malloc() requests memory of a specified size and returns a void* to it.  If the 
    // request cannot be granted, the pointer is NULL.  calloc() is like malloc(), but uses
    // a different scheme for specifying the memory, and the memory is initialized to 0.
    // In both cases, the user is required to release the memory with a call to free().

    // Since the pointer returned by malloc is a void*, it must be "cast" to the required
    // type.  C++ offers several casting options, but here, since we are demonstrating C
    // usage, we will use C casting.
    
    Person* person = (Person*)malloc(sizeof(Person));
    Person* couple = (Person*)malloc(2*sizeof(Person));
    Person* quartet = (Person*)calloc(4, sizeof(Person));

    // We skip the handling because we're just showing alloc operations
    
    // In C, all pointers to dynamically allocated memory are treated alike:
    // CAUTION: Once a pointer has been freed, it should not be used or freed again.
    // A good practice is to ALWAYS couple free() with setting the pointer to 0 (as below)
    // and ALWAYS test a pointer for 0 before dereferencing it.
    free(person);
    person = 0;
    free(couple);
    couple = 0;
    free(quartet);
    quartet = 0;

    // C++-style memory allocation and release use the operators (NOT functions) new,
    // delete, and delete[].  Choosing between delete and delete[] is easy: if the pointer
    // was the result of an array creation, release it with delete[]

    Person* p = new Person("Jack Frost", 17, 69, 215, true);  // Can use any constructor
    Person* c = new Person[2];
    // Remember that pointers can be used as array names
    c[0] = john;

    // Just enough handling here to show that it works
    cout << *p << endl;
    cout << c[0] << endl;

    delete p;
    delete[] c;

    return 0;
}

