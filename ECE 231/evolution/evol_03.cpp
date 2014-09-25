// Step 3:
// We can bundle the tostring() function into the Person struct, and C++
// will "bind" the function to the member data.

#include <stdio.h>
#include <string.h>

#define NAME_SIZE 40
typedef struct
{
    char name[NAME_SIZE];
    int  age;
    int  height;
    int  weight;
    bool alive;

    // Here the tostring() function is also a member of the struct.
    // The C++ runtime "binds" the member function to the member data.
    void tostring(char* out)
    {
        sprintf(out, "Name: %s; age: %d; ht: %d; wt: %d; living? %s",
                name, age, height, weight, alive ? "Yes" : "No");
    }
} Person;


int main()
{
    Person jane = {"Jane Doe", 37, 64, 115, true};
    Person john = {"John Smith", 87, 70, 180, false};
    char ident[1000];

    // Since tostring is in the struct, we use the . notation for it, too
    jane.tostring(ident);
    printf("Jane ==> %s\n", ident);
    john.tostring(ident);
    printf("John ==> %s\n", ident);

    return 0;
}

