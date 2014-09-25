// Step 6:
// Since we created our own constructor, the compiler didn't give us a
// default one; this version gives it back.

#include <stdio.h>
#include <string.h>

#define NAME_SIZE 40

class Person
{

    public:
    char name[NAME_SIZE];
    int  age;
    int  height;
    int  weight;
    bool alive;

    void tostring(char* out);

    Person(const char* iName, int iAge, int iHeight, int iWeight, bool iAlive);

    // Since we created a special constructor, we don't get the default one
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

// Here's the default constructor
Person::Person()
{
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

    // Now we can use the default constructor and initialize individual
    // members separately.
    Person noone;
    strcpy(noone.name, "Davy Jones");
    noone.age = 99;
    // Note that we haven't initialized everything; check the output!

    char ident[1000];

    jane.tostring(ident);
    printf("Jane ==> %s\n", ident);
    john.tostring(ident);
    printf("John ==> %s\n", ident);
    noone.tostring(ident);
    printf("noone ==> %s\n", ident);

    return 0;
}

