#ifndef SMART_ARRAY_H
#define SMART_ARRAY_H

/* NOTE:
 * In some of the function implementation bodies, you will see partial implementations,
 * such as the following (in the capacity() function):
 *
    size_t result = 0;
    // YOUR CODE GOES HERE
    return result;
 *
 * Do not feel obliged to retain any of the supplied code; it is there only to
 * get a compilable program for you to start with.
 */


#include <cstring> // for memset



template <class T>
class SmartArray
{
    // This is the public interface, which all your class's users should
    // expect you to honor.  How you do that is your own business; in particular,
    // any data members and helper functions will be in the private section.
    public:

    // Constructor.  Size defaults to 0, but the user may specify an initial
    // size; if a non-zero value is supplied, the array contents are
    // initialized to all zeros (see "erase()" for a reusable function).
    SmartArray<T>(size_t n = 0);

    // Destructor.  Since the array will be allocating and deallocating memory,
    // it must do so here.  If the elements are pointers, it is the
    // user's obligation to  delete them (since this class has no way of
    // knowing whether it's holding pointers, objects, or built-in types.
    ~SmartArray<T>();

    // Return the current capacity of the array; that is, how
    // many elements will it hold before it has to resize itself
    size_t capacity();

    // Return the current size of the array.  It is the maximum of all the
    // index references since the last clear().
    size_t size();

    // Boolean test for empty array
    bool empty();

    // Empty the array and restore it to size = capacity = 0;
    void clear();

    // Return a pointer to element 0 of the internal data array.  The user
    // will treat the pointer like a normal array.  For example:
    //
    // Here the user declares a smart array of floats
    //    SmartArray<float> myArray;
    //
    // The user does some work to put data into the array, and now the user
    // would like to have a normal C++ array, to use like this:
    //    float ary = myArray.data;
    //    cout << "The first element is " << ary[0] << endl;
    T* data();

    // Set every byte of the contents to zero, but do not
    // reduce the size of the array.
    // Hint: look up the C function "memset"
    void erase();

    // Your user may want to resize the array on demand.
    void resize(const size_t newSize);

    // These are overloaded operators; they are member functions, so they
    // don't need to be "friends"

    // Set one array equal to the other.  Note that since T may be a class,
    // the "deep" or "shallow" nature of this depends on T's operator=
    // implementation.
    SmartArray<T>&  operator=(const SmartArray<T>& rhs);

    // Index into the array.  You would use this like:
    //    SmartArray<float> f;
    //    f[3] = 3.14;
    // You have to be careful that if the supplied index points to an
    // invalid memory location, you have to resize the array and copy the
    // old to the new.  As a rule, if you have to resize, make the new array
    // twice as big as is required by this action.  The operator returns
    // a reference so you can do things like this:
    //    SmartArray<float> f;
    //    f[0] = f[1] = 1.0;
    T& operator[](const size_t index);

    // Return a copy of the first value in the array
    T front();

    // Push an element onto the back of the array, resizing if needed
    void push_back(T newValue);

    // Pop an element off the back of the array
    void pop_back();

    private:
	int arraySize;
	int cap;
    // This is the private section, where you will place all your
    // implementation support details.

    // This is here only for the compiler to like the operator[] function;
    // feel free to replace it
    T* myData;

};

// Because of the templatization, the implementation must be available to
// the compiler, so we must include the implementation in the header.

// Constructor.  Size defaults to 0, but the user may specify an initial
// size; if a non-zero value is supplied, the array contents are
// initialized to all zeros (see "erase()" for a reusable function).
template <class T>
SmartArray<T>::SmartArray(size_t n)
{
    cap = n;
	arraySize = 0;
	myData = NULL;
}


// Destructor.  Since the array will be allocating and deallocating memory,
// it must do so here.  If the elements are pointers, it is the
// user's obligation to  delete them (since this class has no way of
// knowing whether it's holding pointers, objects, or built-in types.
template <class T>
SmartArray<T>::~SmartArray()
{
    delete myData;
	arraySize = 0;
}


// Return the current capacity of the array; that is, how
// many elements will it hold before it has to resize itself
template <class T>
size_t SmartArray<T>::capacity()
{
    return cap;
}


// Return the current size of the array.  It is the maximum of all the
// index references since the last clear().
template <class T>
size_t SmartArray<T>::size()
{
    return arraySize;
}

// Empty the array and restore it to capacity = 0;
template <class T>
void   SmartArray<T>::clear()
{
    // YOUR CODE GOES HERE
}

// Boolean test for empty array
template <class T>
bool SmartArray<T>::empty()
{
    // YOUR CODE GOES HERE
    return false;
}

// Return a pointer to element 0 of the internal data array.  The user
// will treat the pointer like a normal array.  For example:
//
// Here the user declares a smart array of floats
//    SmartArray<float> myArray;
//
// The user does some work to put data into the array, and now the user
// would like to have a normal C++ array, to use like this:
//    float ary = myArray.data;
//    cout << "The first element is " << ary[0] << endl;
template <class T>
T* SmartArray<T>::data()
{
    // YOUR CODE GOES HERE
    return 0;
}


// Set every byte of the contents to a user-supplied value, but do not 
// reduce the size of the array.
// Hint: look up the C function "memset"
template <class T>
void SmartArray<T>::erase()
{
    //void * memset(void*, int value, size_t num);
}


// Your user may want to resize the array on demand.
template <class T>
void SmartArray<T>::resize(const size_t newCapacity)
{
    
}


// These are overloaded operators; they are member functions, so they
// don't need to be "friends"

// Set one array equal to the other.  Note that since T may be a class,
// the "deep" or "shallow" nature of this depends on T's operator=
// implementation.
template <class T>
SmartArray<T>& SmartArray<T>::operator=(const SmartArray<T>& rhs)
{
    // YOUR CODE GOES HERE
    return *this;
}


// Index into the array.  You would use this like:
//    SmartArray<float> f;
//    f[3] = 3.14;
// You have to be careful that if the supplied index points to an
// invalid memory location, you have to resize the array and copy the
// old to the new.  As a rule, if you have to resize, make the new array
// twice as big as is required by this action.  The operator returns
// a reference so you can do things like this:
//    SmartArray<float> f;
//    f[0] = f[1] = 1.0;
template <class T>
T& SmartArray<T>::operator[](const size_t index)
{
    // YOUR CODE GOES HERE
    return *myData;
}

// Return a copy of the first value in the array
template <class T>
T SmartArray<T>::front()
{
    T result;
    // YOUR CODE GOES HERE
    return result;
}

// Push an element onto the back of the array, resizing if needed
template <class T>
void SmartArray<T>::push_back(T newValue)
{
    // YOUR CODE GOES HERE
}

// Pop an element off the back of the array
template <class T>
void SmartArray<T>::pop_back()
{
    // YOUR CODE GOES HERE
}
#endif // SMART_ARRAY_H
