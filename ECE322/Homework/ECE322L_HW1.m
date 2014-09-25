% ECE 322L Electronics 2 HW #1
% By: Mario Chaves
%=========================================================================

%%
%3.27

clear, clc
format short g
format compact

Vds1=[0:0.1:4];
Vds2=[0:0.1:5];
Kn=0.25*10^-3;
Vtn=0.8;
Vdd1=4;
Rd1=1000;

Vdd2=5;
Rd2=3000;

load1=-.001.*Vds1+.004;
load2=-.001.*Vds2+.005;

ids1=Kn*(2*(Vdd1-Vtn).*Vds1-Vds1.^2);
ids2=Kn*(2*(Vdd2-Vtn).*Vds2-Vds2.^2);

subplot(2,1,1); plot(Vds1, ids1, Vds1, load1);
title('3.27 a)');
subplot(2,1,2); plot(Vds2, ids2, Vds2, load2);
title('3.27 b)');


