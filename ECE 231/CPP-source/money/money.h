/*
 *
 *	money.h
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */
 
#include<iostream>
#include<fstream>
#include<string>
#include<vector>
#include<iomanip>
#include<cmath>

using namespace std;

class FINANCE
{
public:
    void EnterData();
    void SinglePaymentCompoundAmount();
    void SinglePaymentPresentWorth();
    void UniformPaymentSeries1();
    void UniformPaymentSeries2();
    void UniformPaymentSeries3();

private:
    int NumYears;
    double *array, PresentSum, FutureSum, APR, Disbursement;
//    ifstream inFile;
//    ofstream outFile1;
//    ofstream outFile2;

};  // end of class FINANCE