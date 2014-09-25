#include <string>
#include <iostream>
#include <fstream>
#include <cctype>
#include "LStack.h"

using namespace std;

Stack Count;

int main(int argc, char* argv[])
{
    void mismatch(char one);

    char *fname;

    if(argc==2)

        fname=argv[1];

    else
    {
        cerr << "Usage: fileio infile " << endl;
        return(1);
    }


    char str[3001];

    int v=0;

    fstream file_op(fname,ios::in);

    while (file_op.getline(str,3001).good())
    {
        while (v < 3000 || str[v] != '\0')
        {
            cout << noskipws << str[v];

            if (str[v] == '['|| str[v] == '{' || str[v] == '(' || str[v] == '<')
            {
                Count.push(str[v]);
                ++v;

            }

            if (str[v] == ']'|| str[v] == '}' || str[v] == ')' || str[v] == '>')
            {

                if (str[v] == ']' && Count.top() == '['){
                    Count.pop();
                    ++v;
                }
                if (str[v] == '>' && Count.top() == '<'){
                    Count.pop();
                    ++v;
                }
                if (str[v] == '}' && Count.top() == '{'){
                    ++v;
                    Count.pop();
                }
                if (str[v] == ')' && Count.top() == '('){ 
                    ++v;
                    Count.pop(); 
                }

                if (str[v] == ']' && Count.top() != '['){
                    mismatch(Count.top());
                    v = 3001;
                }
                if (str[v] == '>' && Count.top() != '<'){
                    mismatch(Count.top());
                    v = 3001;
                }
                if (str[v] == '}' && Count.top() != '{'){
                    mismatch(Count.top());
                    v = 3001;
                }
                if (str[v] == ')' && Count.top() != '('){ 
                    mismatch(Count.top());
                    v = 3001;
                }
                else 
                    ++v;
            }
            else 
                ++v;

        }

    }

    cout<<" ";

    if (Count.empty())
        mismatch(Count.top());

    file_op.close();

    cout <<endl;

    return 0;
}

void  mismatch(char one)
{

    if (one == '(')
        cout << "Mismatched())"<<endl;
    if (one == '{')
        cout << "Mismatched(})"<<endl;
    if (one == '[')
        cout << "Mismatched(])"<<endl;
    if (one == '<')
        cout << "Mismatched(>)"<< endl;
    else 
        cout << "syntax"<< endl;
    return;
}
