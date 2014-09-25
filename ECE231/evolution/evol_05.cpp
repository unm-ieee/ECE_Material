// Step 5:
// Classes have "constructors", which give the programmer control over
// how the class is initialized.  In the preceding step, we relied on
// the default constructor, which was of no real help.  Here we add a
// constructor that allows us to initialize all our member data with as
// much ease as we did with our struct, before we uglified it in the
// previous step.  On thing to note--if you specify a constructor, you
// will not get the default constructor, so normally you have to specify
// it if you specify some other.  Also, know that if you have a constructor
// you also have a destructor.  We will see an example of this later.  For
// now, just be aware that it exists and undoes the work of the constructor.

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

    // The constructor does not have a return type, not even void. 
    // The i prefixes are stylistic, suggesting "initial".
    Person(const char* iName, int iAge, int iHeight, int iWeight, bool iAlive);

};

// This is one way to initialize members; we'll see another later
// The "const" is used as a signal to the compiler that the function will not
// attempt to modify the source data (since it's passed via pointer).
Person::Person(const char* iName, int iAge, int iHeight, int iWeight, bool iAlive)
{
    strcpy(name, iName);
    age    = iAge;
    height = iHeight;
    weight = iWeight;
    alive  = iAlive;
}

void Person::tostring(char* out)
{
    sprintf(out, "Name: %s; age: %d; ht: %d; wt: %d; living? %s",
            name, age, height, weight,
            alive ? "Yes" : "No");
}

int main()
{
    // Now that we have the good constructor, we can prettify our object
    // declarations again.
    Person jane("Jane Doe", 37, 64, 115, true);
    Person john("John Smith", 87, 70, 180, false);

    // Uncomment the next line to see that the default constructor doesn't exist
    // Person noone;

    char ident[1000];

    jane.tostring(ident);
    printf("Jane ==> %s\n", ident);
    john.tostring(ident);
    printf("John ==> %s\n", ident);

    return 0;
}

