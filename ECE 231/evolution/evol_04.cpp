// Step 4:
// One deficiency of structs is that all the data is "public".  That is, it
// is possible for user code to directly modify the member data and perhaps
// to do so in an inconsistent way.  It is very desirable to control the 
// visibility so that only what we want to be public is public, and 
// everything else is private.  To permit this, we first upgrade our struct 
// to a class, and this requires some new syntax.  It also requires a small
// step backward in the tidiness of how we initialize an object of the class.
// This will be rectified soon.

#include <stdio.h>
#include <string.h>

#define NAME_SIZE 40

// Our Person struct is now a class
class Person
{

    // class member data is private by default; this makes it public
    // As a matter of style, the keyword public may often be found at
    // the same indentation level as the keyword class, i.e., at the
    // left margin.
    public:
    char name[NAME_SIZE];
    int  age;
    int  height; 
    int  weight;
    bool alive;

    // We only "declare" the function inside the class declaration;
    // It is "defined" separately (see below)
    void tostring(char* out);

};

// Note the :: separator.  C++ has the concept of "namespace".  Every
// class has its own namespace, so this notation associates this definition
// of "tostring" with the class Person.  Another class may have its own
// definition of "tostring".  Namespaces are also possible without being
// the same as a class.  We will see an example of this soon.
void Person::tostring(char* out)
{
    sprintf(out, "Name: %s; age: %d; ht: %d; wt: %d; living? %s",
            name, age, height, weight,
            alive ? "Yes" : "No");
}

int main()
{
    // We uglify the initialization for now, and clean it up
    // in the next step of the evolution.
    Person jane;
    strcpy(jane.name, "Jane Doe");
    jane.age    = 37;
    jane.height = 64;
    jane.weight = 115;
    jane.alive  = true;
    char ident[1000];

    jane.tostring(ident);
    printf("Jane ==> %s\n", ident);

    return 0;
}

