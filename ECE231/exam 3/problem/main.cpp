#include "stdafx.h"
#include "smartarray.h"
#include <iostream>
#include <string>
using namespace std;

typedef float TestType;  // We can use different types for testing

int main(int argc, char* argv[])
{

    // Point tracking and some useful variables
    int totalPoints = 0;
    int idealPoints = 0;
    int thisPoints  = 0;
    string test;
    SmartArray<TestType> a;
    const size_t startCapacity = 10;
    SmartArray<TestType> b(startCapacity);

    // Test 01.  Construct two arrays verify their sizes
    //           and capacities.

    thisPoints = 6;
    idealPoints += thisPoints;
    test = "Test 01a: ";
    if (a.size() == 0)
    {
        cout << test << "Created empty array; size() returns 0" << endl;
        totalPoints += thisPoints;
    }
    else
        cout << test << "size() returns non-zero on empty array" << endl;

    thisPoints = 6;
    idealPoints += thisPoints;
    test = "Test 01b: ";
    if (a.capacity() == 0)
    {
        cout << test << "capacity() returns 0 for empty array.." << endl;
        totalPoints += thisPoints;
    }
    else
        cout << test << "capacity() returns non-zero for empty array." << endl;

    thisPoints = 6;
    idealPoints += thisPoints;
    test = "Test 01c: ";
    if (b.capacity() == startCapacity)
    {
        cout << test << "capacity() returns correct value for sized array." << endl;
        totalPoints += thisPoints;
    }
    else
        cout << test << "capacity() returns wrong value for sized array." << endl;

    thisPoints = 6;
    idealPoints += thisPoints;
    test = "Test 01d: ";
    if (a.empty() && b.empty())
    {
        cout << test << "empty() returns true for empty array." << endl;
        totalPoints += thisPoints;
    }
    else
        cout << test << "empty() returns false for empty array." << endl;
   
    // Test 02: Check for push_back() operations
    size_t firstPushCount = startCapacity / 2;
    for (size_t i = 0; i < firstPushCount; i++)
        b.push_back(i);
    thisPoints = 10;
    idealPoints += thisPoints;
    test = "Test 02a: ";
    if (b.size() == firstPushCount && b.capacity() == startCapacity)
    {
        cout << test << "pushed a few values without resizing" << endl;
        totalPoints += thisPoints;
    }
    else
        cout << test << "resizing happened too soon" << endl;

    thisPoints = 10;
    idealPoints += thisPoints;
    test = "Test 02b: ";
    if (b.front() == 0)
    {
        cout << test << "front() returns the correct first value pushed." << endl;
        totalPoints += thisPoints;
    }
    else
        cout << test << "front() returned an incorrect value." << endl;

    // Force a resize
    size_t pushCount = startCapacity - firstPushCount + 1;
    for (size_t i = 0; i < pushCount; i++)
        b.push_back(i + firstPushCount);
    thisPoints = 7;
    idealPoints += thisPoints;
    test = "Test 02c: ";
    if (b.capacity() == 2*startCapacity)
    {
        cout << test << "correct auto-resizing." << endl;
        totalPoints += thisPoints;
    }
    else
        cout << test << "incorrect auto-resizing." << endl;
    
    // Test 03: indexing
    thisPoints = 9;
    idealPoints += thisPoints;
    test = "Test 03: ";
    if (b[1] == 1 && b[2] == 2)
    {
        cout << test << "correct indexing." << endl;
        totalPoints += thisPoints;
    }
    else
        cout << test << "incorrect indexing." << endl;

    // Test 04: popping
    thisPoints = 7;
    idealPoints += thisPoints;
    test = "Test 04: ";
    size_t oldSize = b.size();
    b.pop_back();
    if (b.size() == oldSize - 1)
    {
        cout << test << "correct pop_back() operation." << endl;
        totalPoints += thisPoints;
    }
    else
        cout << test << "incorrect pop_back() operation." << endl;

    // Test 05: deep copying
    thisPoints = 10;
    idealPoints += thisPoints;
    test = "Test 05: ";
    a = b;
    if (a.size() == b.size() && a.capacity() == b.capacity())
    {
        size_t i = 0;
        while (i < a.size())
        {
            if (a[i] != b[i]) break;
            i++;
        }
        if (i == a.size())
        {
            cout << test << "correct deep copy." << endl;
            totalPoints += thisPoints;
        }
        else
            cout << test << "incorrect deep copy operation." << endl;
    }
    else
        cout << test << "incorrect deep copy operation." << endl;

    // Test 06: resize on demand
    thisPoints = 7;
    idealPoints += thisPoints;
    test = "Test 06: ";
    b.resize(100);
    if (a.size() == b.size() && b.capacity() == 100)
    {
        size_t i = 0;
        while (i < a.size())
        {
            if (a[i] != b[i]) break;
            i++;
        }
        if (i == a.size())
        {
            cout << test << "correct resizing." << endl;
            totalPoints += thisPoints;
        }
        else
            cout << test << "incorrect resizing operation." << endl;
    }
    else
        cout << test << "incorrect resizing operation." << endl;

    // Test 07: erasing
    thisPoints = 8;
    idealPoints += thisPoints;
    test = "Test 07: ";
    b.erase();
    size_t i = 0;
    while (i < b.size())
    {
        if (b[i] != 0) break;
        i++;
    }
    if (i == b.size())
    {
        cout << test << "correct erase() operation." << endl;
        totalPoints += thisPoints;
    }
    else
        cout << test << "incorrect erase() operation." << endl;

    // Test 08: getting a pointer to the data
    thisPoints = 8;
    idealPoints += thisPoints;
    test = "Test 08: ";
    TestType* ptr = a.data();
    i = 0;
    while (i < 5)
    {
        if (ptr[i] != i) break;
        i++;
    }
    if (i == 5)
    {
        cout << test << "correct data() operation." << endl;
        totalPoints += thisPoints;
    }
    else
        cout << test << "incorrect data() operation." << endl;

    // Report summary results
    cout << "Total = " << totalPoints << " out of a possible " << idealPoints << endl;
    return 0;
}
