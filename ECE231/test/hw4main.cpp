#include "Homework4.h"
using namespace std;

int main(void)
{
	int count,i,x;
	float *data,*datasorted,y,temp;
	functions func;

	ofstream out_stream;
	out_stream.open ("outputfile.txt");
	ifstream inputf;
	inputf.open ("inputf.txt");

	count = 1;

	while (!inputf.eof())
	{
		inputf >> x;
		if( inputf.eof() ) break;
		count = count + 1;
	}

	data = new float[count];
	inputf.clear();
    inputf.seekg(0, std::ios_base::beg);


	for (i=0; i<count; i++)
	{
		inputf >> y;
		data[i] = y;
	}

	func.putarray(data,count);

	temp = func.maxvalue();
	out_stream << "Maximum Value: " << temp << "\n";

	temp = func.minvalue();
	out_stream << "Minimum Value: " << temp << "\n";

	temp = func.average();
	out_stream << "Average: " << temp << "\n";
	
	datasorted = new float[func.sort()];
	for (int i=0; i<count;i++)
	{
		out_stream << "\n" << datasorted[i];
	}

	temp = func.variance();
	out_stream << "\n\nVariance: " << temp << "\n";

	temp = func.standev();
	out_stream << "\nStandard Deviation: " << temp << "\n";

return(0);
}
