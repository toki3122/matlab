clc;clear all;close all;
%ke^s2c=s1e^2c
%lnk=lns1+c(2-s2)
c=[.5 .8 1.5 2.5 4];
k=[1.1 2.4 5.3 7.6 8.9];
yo=log(k);
n=length(c);
sumc=sum(c);
sumsq=sum(c.^2);
sumk=sum(yo);
sumck=sum(c.*yo);
A=[n sumc;sumc sumsq];
B=[sumk;sumck];
a=A\B;
s1=exp(a(1))
s2=2-a(2)
km=s1*exp(c.*(2-s2));
plot(c,k,'o',c,km);