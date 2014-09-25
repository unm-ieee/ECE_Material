#include "Homework4.h"

void functions::putarray(float _data[],int _count)
{
	count = _count;
	data = _data;
}

float functions::maxvalue()
{
	float temp = 0;
	for (int i=0; i<count; i++)
	{
		if (data[i] > temp) temp = data[i];
	}

	return temp;
}

float functions::minvalue()
{
	float temp = data[0];
	for (int i=0; i<count; i++)
	{
		if (data[i] < temp) temp = data[i];
	}
	return temp;
}

float functions::average()
{
	float temp = 0;
	for (int i=0;i<count;i++)
	{
		temp = temp+data[i];
	}
	temp = temp/count;
	return temp;
}

float functions::sort()
{
	int i=0;
	int x=0;
	for (i=count; i>=0; i--)
	{
	for (x=0; x<count-1; x++)
		{
		if (data[x] > data[x+1])
			{
				float temp = data[x+1];
				data[x+1] = data[x];
				data[x] = temp;
			}
		}
	}
	return *data;
}

float functions::variance()
{
	float average = this->average();
	float tempvariance = 0;
	float temp = 0;
	for (int i=0; i<count; i++)
	{
		temp = data[i]-average;
		temp = pow(temp,2);
		tempvariance = tempvariance + temp;
	}
	tempvariance = tempvariance/count;
	return tempvariance;
}

float functions::standev()
{
	float temp = this->variance();
	temp = sqrt(temp);
	return temp;
}


/*
float sumvalue(float z1, float z2)
{
	float temp;
	temp = z1+z2;
	return temp;
}

float variance(float z1, float z2)
{
	float temp;
	temp = z1 - z2;
	return temp;
}
*/