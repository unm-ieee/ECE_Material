/*
 *
 *	money.cpp
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */


/*
 Enter common data for each member function.
*/

void FINANCE::EnterData()
{
    cout << "\nEnter APR% = ";
    cin >> APR;
    cout << "\nEnter number of years = ";
    cin >> NumYears;
}



/*
 Single Payment Compound Amount Formula
    F=P(1+i)^n or F=P(F/P,i,n)
 
    Future Sum = Present Sum (1+i)^n
    i = interest rate (APR)
    n = periods of time, years

*/

void FINANCE::SinglePaymentCompoundAmount()
{
    double apr;
    
    cout << "\nSingle Payment Compound Amount\n";
    FINANCE::EnterData();
    cout << "\nEnter Present Sum = ";
    cin >> PresentSum;
    apr = APR/100;
    array = new double [NumYears+1];
    // array holds the Future Sum per year
    for (int i = 0; i <= NumYears; i++)
         {
             array[i] = PresentSum * pow((1 + apr), i);
             cout << "array[" << i << "]= " << array[i] << endl;
         }
} // end of function




/*
 Single Payment Present Worth Formula
    P=F(1+i)^-n or P=F(P/F,i,n)
 
    F = Future Sum
    P = Present Sum 
    i = interest rate (APR)
    n = periods of time, years
*/

void FINANCE::SinglePaymentPresentWorth()
{
    double apr;
    
    cout << "\nSingle Payment Present Worth\n";
    FINANCE::EnterData();
    cout << "\nEnter Future Sum = ";
    cin >> FutureSum;
    apr = APR/100;
    array = new double [NumYears+1];
    // array holds the Present Sum per year
    for (int i = 0; i <= NumYears; i++)
    {
        array[NumYears-i] = (FutureSum / pow((1 + apr), i));
        cout << "array[" << (NumYears-i) << "]= " << array[NumYears-i] << endl;
    }    
} // end of function



/*
 Uniform Payment Series 1
    F=A[((1+i)^n - 1)/i] 
 
    term in brackets is called the
    Uniform Series Compound Amount Factor (USCAF)
    Notation: (F/A,i,n)
    F = Future Sum
    P = Present Sum 
    i = interest rate (APR)
    n = periods of time, years
    A = End-of-period cash receipt or disbursement
        in a uniform series, continuing for n periods, the
        entire series equivalent to P or F at interest rate i.
*/


void FINANCE::UniformPaymentSeries1()
{
    double apr;

    cout << "\nUniform Payment Series 1\n";
    FINANCE::EnterData();
    cout << "\nEnter Disbursement = ";
    cin >> Disbursement;
    apr = APR/100;
    array = new double [NumYears];
    // array holds the Future Sum per year
    for (int i = 1; i <= NumYears; i++)
    {
        array[i] = Disbursement * (((pow((1 + apr), i)) - 1)/apr);
        cout << "array[" << i << "]= " << array[i] << endl;
    }    
} // end of function
    



/*
 Uniform Payment Series 2
    A=F[i/((1+i)^n - 1)] 
 
    term in brackets is called the
    Uniform Series Sinking Fund Factor (USSFF)
    Notation: (A/F,i,n)
    F = Future Sum
    P = Present Sum 
    i = interest rate (APR)
    n = periods of time, years
    A = End-of-period cash receipt or disbursement
        in a uniform series, continuing for n periods, the
        entire series equivalent to P or F at interest rate i.
*/

void FINANCE::UniformPaymentSeries2()
{
    double apr;
    
    cout << "\nUniform Payment Series 2\n";
    FINANCE::EnterData();
    cout << "\nEnter Future Sum = ";
    cin >> FutureSum;
    apr = APR/100;
    array = new double [NumYears];
    // array holds the Disbursement Sum per year
    for (int i = 1; i <= NumYears; i++)
    {
        array[i] = FutureSum * (apr/((pow((1 + apr), i)) - 1));
        cout << "array[" << i << "]= " << array[i] << endl;
    }        
} // end of function




/*
 Uniform Payment Series 3
    A=P[(1+i)^n][i/((1+i)^n - 1)] 
 
    term in brackets is called the
    Uniform Series Capital Recovery Factor (USCRF)
    Notation: (A/P,i,n)
    F = Future Sum
    P = Present Sum 
    i = interest rate (APR)
    n = periods of time, years
    A = End-of-period cash receipt or disbursement
        in a uniform series, continuing for n periods, the
        entire series equivalent to P or F at interest rate i.
*/

void FINANCE::UniformPaymentSeries3()
{
    double apr;
    
    cout << "\nUniform Payment Series 3\n";
    FINANCE::EnterData();
    cout << "\nEnter Present Sum = ";
    cin >> PresentSum;
    apr = APR/100;
    array = new double [NumYears];
    // array holds the Disbursement Sum per year
    for (int i = 1; i <= NumYears; i++)
    {
        array[i] = PresentSum * pow((1 + apr), i) * (apr/((pow((1 + apr), i) - 1)));
        cout << "array[" << i << "]= " << array[i] << endl;
    }        
} // end of function


