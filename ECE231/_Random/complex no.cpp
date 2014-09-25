# include <iostream>
# include <iomanip>
# include <cmath>
# include <windows.h>
using namespace std;


int complex();

int add();

int subtract();

int multiply();

int divide();

int conjugate();

int angle_theta();

int modulus();

int convert_tri();

int convert_pol();


void clearScreen();

void setCursorPosition(short row , short col);int convert_expon();

const double pi=3.14159265358979323846264;// the constant PI

double re1,re2,im1,im2,re3,im3;//(re1,im1)first num(re2,im2)second num(re3,im3)result.

int count;// the counter of your choise (add,subtr,...).

double r1,r2; //the modulus under the root.

char choise,sign1,sign2,i1,i2;//for the question (y/n)/sign of the num +i or -i.


void main ()

{

	cout<<setw(47)<<"CAIRO UNIVERSITY\n"<<endl;

	cout<<setw(58)<<"FACULTY OF COMPUTERS AND INFORMATION"<<endl<<endl<<endl;

	
		complex();

}

int complex()

{
	cout<<"\n"<<setw(57)<<"  * C O M P L E X   N U M B E R S * \n\n"<<setw(61)<<"######################################\n\n\n\n";
	
	do
	
	{

number1:		
	
	cout<<"\tEnter the first complex number Z1 : ";
	
	cin>>re1>>sign1>>i1>>im1;
			
	if(sign1!='+')
			
	{
				
		if(sign1!='-')
				
		{
				
			cout << "\n\tOnly + and - are allowed.\n" << endl;
			
			goto number1;
				
		}
			
	}

			if(i1!='i')
			
		{
				cout << "\n\tOnly Letter 'i' is allowed.\n" << endl;
				
				goto number1;
		}
			


number2:		
		
		cout<<"\n\n\tEnter the second complex number Z2 : ";
				
		cin>>re2>>sign2>>i2>>im2;

		if(sign2!='+')
			
		{
			if(sign2!='-')
				
			{
					cout << "\tOnly + and - are allowed.\n" << endl;
					
					goto number2;
			}
			
		}


		if(i2!='i')
			
			
		{
				
			cout << "\tOnly Letter 'i' is allowed.\n" << endl;
				
			goto number2;
			
		}
		
		do
		
		{
menu:		
		clearScreen();
			
		cout<<endl<<setw(45)<<"\"MAIN MENU\"\n";
			
		cout<<setw(45)<<"===========\n";
			
		cout<<"\n\t1) Addition"<<setw(36)<<"2) Subtraction\n";
			
		cout<<"\n\t3) Multiplication"<<setw(27)<<"4) Division\n";
			
		cout<<"\n\t5) Conjugate"<<setw(36)<<"6) Angle(theta)\n";
			
		cout<<"\n\t7) Modulus"<<setw(57)<<"8) Transform to trigenometric form\n";
			
		cout<<"\n\t9) Transform to polar form"<<setw(40)<<"10) Transform to Exponential form\n";
			
		cout<<"\n\n\tYour choise = ";
			
			cin>>count;
			
			clearScreen();
			
			switch(count)
			
			{
			
			case 1://Addition
				
				cout<<endl<<setw(45)<<"\"Addition\"\n\n";
				
				add();
				
				break;
			
			case 2://Subtraction
				
				cout<<endl<<setw(46)<<"\"Subtraction\"\n\n";
				
				subtract();
				
				break;
			
			case 3://Multiplication
				
				cout<<endl<<setw(48)<<"\"Multiplication\"\n\n";
				
				multiply();
				
				break;
			
			case 4://Division
				
				cout<<endl<<setw(45)<<"\"Division\"\n\n";
				
				divide();
				
				break;
			
			case 5://Conjugate
				
				cout<<endl<<setw(45)<<"\"Conjugate\"\n\n";
				
				conjugate();
				
				break;
			
			case 6://Angle(theta)
				
				cout<<endl<<setw(47)<<" Angle(theta)  (\xE9) \n\n";
				
				angle_theta();
				
				break;
			
			case 7://Modulus
				
				cout<<endl<<setw(45)<<" Modulus (r) "<<"\n\n";
				
				modulus();
				
				break;
			
			case 8://Transform to trigenometric form
				
				cout<<endl<<setw(56)<<"\"Transform to trigenometric form\"\n\n";
				
				convert_tri();
				
				break;
			
			case 9://Transform to polar form
				
				cout<<endl<<setw(52)<<"\"Transform to polar form\"\n\n";
				
				convert_pol();
				
				break;
			
			case 10://Transform to Exponential form
				
				cout<<endl<<setw(55)<<"\"Transform to Exponential form\"\n\n";
				
				convert_expon();
				
				break;
			
			default :     //when the user enter anumber more than 10 .
				
				cout<<setw(46)<<"\"Out of Menu\"\n\n";
				
				cout<<"\t\tError  ! enter from 1 to 10 only \n\n";
				
				goto menu;
			
			}
			
			cout<<"\n\n\nDo you want to perform another operation on your numbrs?(y/n)";
			
			cin>>choise;   //to do another operation or not.
		
        }
		
		while(choise=='y'||choise=='Y');
		
		cout<<"\n\nDo you want to enter anew numbers?(y/n)";
		
		cin>>choise;      //to enter anew numbers or not.
		
		clearScreen();

		cout<<endl<<endl;
	}
	
	while(choise=='y'||choise=='Y');

	return (0);

}

int add()

{
    double q,p;

    if(sign1=='-'&& sign2=='-')
	
	{
		q=-1*(im1);
        
	    p=-1*(im2);
	}
	
	if(sign1=='-' && sign2=='+' )
	{
	   
		q=-1*(im1);
        
	    p=(im2);
	}

    if(sign1=='+' && sign2=='+' )
	
	{
	   
		q=(im1);
        
	    p=(im2);
	}
    
	if(sign1=='+' && sign2=='-' )
	
	{
	   
		q=(im1);
        
	    p=-1*(im2);
	}
	

	re3=re1+re2;
	
	im3=q+p;
	
	if(im3<0)
		
		cout<<"\n\tZ1 + Z2 = "<<re3<<" - i "<<im3*(-1)<<endl;
	
	else
		
		cout<<"\n\tZ1 + Z2 = "<<re3<<" + i "<<im3<<endl;
	
	return 0;
}


int subtract()

{
	double q,p;

    if(sign1=='-'&& sign2=='-')
	
	{
		q=-1*(im1);
        
	    p=-1*(im2);
	}
	
	if(sign1=='-' && sign2=='+' )
	{
	   
		q=-1*(im1);
        
	    p=(im2);
	}

    if(sign1=='+' && sign2=='+' )
	
	{
	   
		q=(im1);
        
	    p=(im2);
	}
    if(sign1=='+' && sign2=='-' )
	
	{
	   
		q=(im1);
        
	    p=-1*(im2);
	}
	
	re3=re1-re2;
	
	im3=q-p;
	
	if(im3<0)
		
		cout<<"\n\tZ1 - Z2 = "<<re3<<" - i "<<im3*(-1)<<endl;
	
	else
		
		cout<<"\n\tZ1 - Z2 = "<<re3<<" + i "<<im3<<endl;	
	
	return 0;
}

int multiply()

{
	double q,p;

    if(sign1=='-'&& sign2=='-')
	
	{
		q=-1*(im1);
        
	    p=-1*(im2);
	}
	
	if(sign1=='-' && sign2=='+' )
	{
	   
		q=-1*(im1);
        
	    p=(im2);
	}

    if(sign1=='+' && sign2=='+' )
	
	{
	   
		q=(im1);
        
	    p=(im2);
	}
    if(sign1=='+' && sign2=='-' )
	
	{
	   
		q=(im1);
        
	    p=-1*(im2);
	}

	
	re3=(re1*re2)-(q*p);
	
	im3=(re1*p)+(re2*q);
	
	if(im3<0)
		
		cout<<"\n\tZ1 * Z2 = "<<re3<<" - i "<<im3*(-1)<<endl;
	
	else
		
		cout<<"\n\tZ1 * Z2 = "<<re3<<" + i "<<im3<<endl;
	
	return 0;
}

int divide()

{
	double deno;
	
	if(sign1=='+')
	
	{
		if(sign2=='+')
		
		{
			re3=(re1*re2)+(im1*im2);
			
			im3=(-re1*im2)+(re2*im1);
		}
		
		if(sign2=='-')
		
		{
			
			re3=(re1*re2)-(im1*im2);
			
			im3=(re1*im2)+(re2*im1);
		}
	}
	
	if(sign1=='-')
	
	{
		if(sign2=='-')
		
		{
			
			re3=(re1*re2)+(im1*im2);
			
			im3=(re1*im2)-(re2*im1);
		}
		
		if(sign2=='+')
		
		{
			re3=(re1*re2)-(im1*im2);
			
			im3=(-re1*im2)+(-re2*im1);
		}
	}
	
	deno=(re2*re2)+(im2*im2);
	
	if(im3<0)
		
		cout<<"\n\tZ1 / Z2 = "<<re3<<"/"<<deno<<" - i "<<im3*(-1)<<"/"<<deno<<endl;
	else
		
		cout<<"\n\tZ1 / Z2 = "<<re3<<"/"<<deno<<" + i "<<im3<<"/"<<deno<<endl;
	
	return 0;
}


int conjugate()

{
	if(sign1=='-')
	
	{
		
		cout<<"\n\tThe conjugate of the first number = "<<re1<<" + "<<im1<<endl;
	}
	
	else
	
	{
		
		cout<<"\n\tThe conjugate of the first number = "<<re1<<" - "<<i1<<im1<<endl;
	}
	
	if(sign2=='-')
	{
		
		cout<<"\n\tThe conjugate of the first number = "<<re2<<" + "<<i2<<im2<<endl;
	}
	
	else
	
	{
	
		
		cout<<"\n\tThe conjugate of the first number = "<<re2<<" - "<<i2<<im2<<endl;
	}
		
	return 0;
}

int angle_theta()

{
	double q,p;

    if(sign1=='-'&& sign2=='-')
	
	{
		q=-1*(im1);
        
	    p=-1*(im2);
	}
	
	if(sign1=='-' && sign2=='+' )
	{
	   
		q=-1*(im1);
        
	    p=(im2);
	}

    if(sign1=='+' && sign2=='+' )
	
	{
	   
		q=(im1);
        
	    p=(im2);
	}
    if(sign1=='+' && sign2=='-' )
	
	{
	   
		q=(im1);
        
	    p=-1*(im2);
	}

	
	float g,h;
	
	cout<<"\n\tThe angle of the first number \xE9"<<"1 = ";
	
	g=atan(q/re1);
	
	g=(g*180)/pi;
	
	if(g<0)
		
		g*=-1;
	
	 if(re1>0&&q>0)
		
		g=g;
	
	 if(re1<0&&q>=0)
		
		g=180-g;
	
	 if(re1<0&&q<0)
		
		g=180+g;
	
	 if(re1>=0&&q<0)
		
		g=360-g;
	
	cout<<g<<" grade"<<endl;
	
	cout<<"\n\tThe angle of the second number \xE9"<<"2 = ";
	
	h=atan(p/re2);
	
	h=(h*180)/pi;
	
	if(h<0)
		
		h*=-1;
	
    if(re2>0&&p>0)
		
		h=h;
	
	if(re2<0&&p>=0)
		
		h=180-h;
	
    if(re2<0&&p<0)
		
		h=180+h;
	
    if(re2>=0&&p<0)
		
		h=360-h;
	
	cout<<h<<" grade"<<endl;
	
	return 0;
}


int modulus()

{
	double q,p;

    if(sign1=='-'&& sign2=='-')
	
	{
		q=-1*(im1);
        
	    p=-1*(im2);
	}
	
	if(sign1=='-' && sign2=='+' )
	{
	   
		q=-1*(im1);
        
	    p=(im2);
	}

    if(sign1=='+' && sign2=='+' )
	
	{
	   
		q=(im1);
        
	    p=(im2);
	}
    if(sign1=='+' && sign2=='-' )
	
	{
	   
		q=(im1);
        
	    p=-1*(im2);
	}

	
	cout<<"\n\tThe modulus of the first number (r1)=";
	
	r1=((re1*re1)+(q*q));
	
	cout<<" root "<<(r1)<<endl;
	
	cout<<"\n\tThe modulus of the second number (r2)=";
	
	r2=((re2*re2)+(p*p));
	
	cout<<" root "<<(r2)<<endl;
	
	return 0;
}

int convert_tri()

{
	
	float g,h;
	
	double q,p;

    if(sign1=='-'&& sign2=='-')
	
	{
		q=-1*(im1);
        
	    p=-1*(im2);
	}
	
	if(sign1=='-' && sign2=='+' )
	{
	   
		q=-1*(im1);
        
	    p=(im2);
	}

    if(sign1=='+' && sign2=='+' )
	
	{
	   
		q=(im1);
        
	    p=(im2);
	}
    if(sign1=='+' && sign2=='-' )
	
	{
	   
		q=(im1);
        
	    p=-1*(im2);
	}

	
	r1=((re1*re1)+(q*q));
	
	r2=((re2*re2)+(p*p));
	
	g=atan(q/re1);
	
	g=(g*180)/pi;
	
	if(g<0)
		
		g*=-1;
	
	if(re1>0&&q>0)
		
		g=g;
	
    if(re1<0&&q>=0)
		
		g=180-g;
	
    if(re1<0&&q<0)
		
		g=180+g;
	
	 if(re1>=0&&q<0)
		
		g=360-g;
	
	h=atan(p/re2);
	
	h=(h*180)/pi;
	
	if(h<0)
		
		h*=-1;
	
    if(re2>0&&p>0)
		
		h=h;
	
	 if(re2<0&&p>=0)
		
		h=180-h;
	
	 if(re2<0&&p<0)
		
		h=180+h;
	
	if(re2>=0&&p<0)
		
		h=360-h;
	
	cout<<"\n\tThe first number Z1 = "<<"root "<<r1<<" ( COS "<<g<<" + "<<"i"<<" SIN "<<g<<" )\n";
	
	cout<<"\n\tThe second number Z2 = "<<"root "<<r2<<" ( COS "<<h<<" + "<<"i"<<" SIN "<<h<<" )\n";
	
	return 0;
}


int convert_pol()

{
	float g,h;
	
	double q,p;

    if(sign1=='-'&& sign2=='-')
	
	{
		q=-1*(im1);
        
	    p=-1*(im2);
	}
	
	if(sign1=='-' && sign2=='+' )
	{
	   
		q=-1*(im1);
        
	    p=(im2);
	}

    if(sign1=='+' && sign2=='+' )
	
	{
	   
		q=(im1);
        
	    p=(im2);
	}
    if(sign1=='+' && sign2=='-' )
	
	{
	   
		q=(im1);
        
	    p=-1*(im2);
	}

	
	r1=((re1*re1)+(q*q));
	
	r2=((re2*re2)+(p*p));
	
	g=atan(q/re1);
	
	g=(g*180)/pi;
	
	if(g<0)
		
		g*=-1;
	
	if(re1>0&&q>0)
		
		g=g;

    if(re1<0&&q>=0)
		
		g=180-g;
	
    if(re1<0&&q<0)
		
		g=180+g;
	
	if(re1>=0&&q<0)
		
		g=360-g;
	
	h=atan(p/re2);
	
	h=(h*180)/pi;
	
	if(h<0)
		
		h*=-1;
	
	if(re2>0&&p>0)
		
		h=h;
	
	if(re2<0&&p>=0)
		
		h=180-h;
	
	if(re2<0&&p<0)
		
		h=180+h;
	
	if (re2>=0&&p<0)
		
		h=360-h;
	
	cout<<"\n\tThe first number Z1 = "<<"root "<<r1<<" ( "<<g<<endl;
	
	cout<<"\n\tThe second number Z2 = "<<"root "<<r2<<" ( "<<h<<endl;
	
	return 0;
}

int convert_expon()

{
	float g,h;

	double p,q;

    if(sign1=='-'&& sign2=='-')
	
	{
		q=-1*(im1);
        
	    p=-1*(im2);
	}
	
	if(sign1=='-' && sign2=='+' )
	{
	   
		q=-1*(im1);
        
	    p=(im2);
	}

    if(sign1=='+' && sign2=='+' )
	
	{
	   
		q=(im1);
        
	    p=(im2);
	}
    if(sign1=='+' && sign2=='-' )
	
	{
	   
		q=(im1);
        
	    p=-1*(im2);
	}

	
	r1=((re1*re1)+(q*q));
	
	r2=((re2*re2)+(p*p));
	
	g=atan(q/re1);
	
	g=(g*180)/pi;
	
	if(g<0)
		
		g*=-1;
	
	if(re1>0&&q>0)
		
		g=g;
	
    if(re1<0&&q>=0)
		
		g=180-g;
	
	if(re1<0&&q<0)
		
		g=180+g;
	
    if(re1>=0&&q<0)
		
		g=360-g;
	
	h=atan(p/re2);
	
	h=(h*180)/pi;
	
	if(h<0)
		
		h*=-1;
	
	if(re2>0&&p>0)
		
		h=h;
	
	if(re2<0&&p>=0)
		
		h=180-h;
	
	if(re2<0&&p<0)
		
		h=180+h;
	if(re2>=0&&p<0)
		h=360-h;
	
	cout<<"\n\tThe first number Z1 = "<<"root "<<r1<<" e^ i "<<g<<endl;
	
	cout<<"\n\tThe second number Z2 = "<<"root "<<r2<<" e^ i " <<h<<endl;
	
	return 0;
}

void clearScreen()

{
	HANDLE hConsole = GetStdHandle( STD_OUTPUT_HANDLE );
	
	COORD topLeft = {0,0};
	
	FillConsoleOutputCharacter(hConsole, ' ', 25*80, topLeft, NULL);
	
	setCursorPosition(0, 0);
}


void setCursorPosition(short row , short col)

{
	
	HANDLE hConsole = GetStdHandle ( STD_OUTPUT_HANDLE );
	
	COORD pos = {row, col};
	
	SetConsoleCursorPosition ( hConsole, pos );

}








