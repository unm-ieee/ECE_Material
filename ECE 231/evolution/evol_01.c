// This is the first step in a series that will evolve C into C++
// If you follow along in sequence, you can change from a C programmer
// to a C++ programmer in bite-size, relatively painless chunks.
//
// Each step begins with an overview, and code that relates to the new
// concept is also commented.  Follow along in sequence; don't skip around.
//
// Step 1 illustrates a simple struct and a corresponding "tostring()"
// function that produces a descriptor string for later printing with
// printf("%s").
//
// For library functions that you may be unfamiliar with, see
// www.cplusplus.com

#include <stdio.h>     // For printf() and sprintf() functions
#include <string.h>    // For string handling support
#include <stdbool.h>   // For bool data type (Kochan, pg. 26)

// A simple datatype for declaring variables of type Person
// Allow NAME_SIZE characters for the name.  The "typedef" modifier
// creates a new typename for referring to the struct.
#define NAME_SIZE 40 
typedef struct
{
    char name[NAME_SIZE];   // Character array for the name
    int  age;               // In years
    int  height;            // In inches
    int  weight;            // In pounds
    bool alive;
} Person;

// A function to "stringify" the struct members for testing purposes
void tostring(Person p, char* out)
{
    // sprintf is like printf, but its output goes to a char array
    sprintf(out, "Name: %s; age: %d; ht: %d; wt: %d; living? %s",
            p.name, p.age, p.height, p.weight,
            p.alive ? "Yes" : "No");
}

int main()
{
    // Declare and initialize two items of type Person
    Person jane = {"Jane Doe", 37, 64, 115, true};
    Person john = {"John Smith", 87, 70, 180, false};

    // The user function has to supply the buffer for tostring's output
    char ident[1000];   // Big enough for anyone

    // Stringify and print jane's data
    tostring(jane, ident);
    printf("Jane ==> %s\n", ident);

    // Stringify and print john's data
    tostring(john, ident);
    printf("John ==> %s\n", ident);

    return 0;
}

