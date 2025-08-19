clc;clear all;close all;
%y-2=A(x+0.5)^B
%ln(y-2)=lnA+Bln(x+0.5)
c=.5;
d=2;
x=1:10;
y=[6.1 4.7 3.9 3.3 2.9 2.6 2.3 2.1 1.95 1.85];
yo=log10(y-d);
X=log10(x+c);
n=length(x);
sumx=0;
sumsq=0;
sumxy=0;
sumy=0;
for i=1:10
    sumx=sumx+X(i);
    sumsq=sumsq+(X(i)^2);
    sumxy=sumxy+X(i)*yo(i);
    sumy=sumy+yo(i);
end
b=[sumy;sumxy];
a=[n sumx;sumx sumsq];
z=a\b;
A=10^(z(1))
B=z(2)
ym=(A*((x+.5).^B))+2;
plot(x,y,'o',x,ym);