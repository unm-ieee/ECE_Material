// Step 7:
// We can make the member data private, but we'd better keep the
// member functions public so we can construct and display the data.

#include <stdio.h>
#include <string.h>

#define NAME_SIZE 40

// Our Person class now has private data, public functions
class Person
{
    // Members are private by default, but it's good style to say so anyway
    private:
    char name[NAME_SIZE];
    int  age;
    int  height;
    int  weight;
    bool alive;

    // Once a public: declaration occurs, it's in effect until either
    // private: or protected: occurs (and similarly for them)
    public:

    void tostring(char* out);

    Person(const char* iName, int iAge, int iHeight, int iWeight, bool iAlive);

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

Person::Person()
{
    strcpy(name, "No Name");
    age    = 0;
    height = 0;
    weight = 0;
    alive  = false;
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

    Person noone;
    // Can't touch these values; they're private.  Uncomment these lines
    // to see the compiler messages.
    //strcpy(noone.name, "Davy Jones");
    //noone.age = 99;
    // Check the output again, with the new default constructor

    char ident[1000];

    jane.tostring(ident);
    printf("Jane ==> %s\n", ident);
    john.tostring(ident);
    printf("John ==> %s\n", ident);
    noone.tostring(ident);
    printf("noone==> %s\n", ident);

    return 0;
}

