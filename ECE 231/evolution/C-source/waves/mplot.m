%This is the matlab file that plots a file
A = dlmread('out.txt');
B = dlmread('out.txt');
stem(A);
pause;
plot(B);
