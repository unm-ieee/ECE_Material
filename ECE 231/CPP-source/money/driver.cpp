/*
 *
 *	driver.cpp
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

#include "money.h"
//#include "money.cpp"

// ******BEGIN MAIN******
int main()
{ 
    // Creating object 'MONEY' as an instance of FINANCE to be used.
    FINANCE MONEY;
    
    MONEY.SinglePaymentCompoundAmount();
    MONEY.SinglePaymentPresentWorth();
    MONEY.UniformPaymentSeries1();
    MONEY.UniformPaymentSeries2();
    MONEY.UniformPaymentSeries3();
    return (0);
    
} // end of main
