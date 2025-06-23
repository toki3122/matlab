clc;clear all;close all;
fun= @(x) log(x);%@(x) is used to define an analogous function
q1=integral(fun,0,1)%integral of fun, from 0 to 1
fun1=@(x) exp(-x.^2).*(log(x)).^2;
q2=integral(fun1,0,Inf)
%double integral
fun2=@(x,y) 3*x.^2+5*y.^2;
q3=integral2(fun2,0,5,-5,0)
%triple integral
fun3=@(x,y,z) y.*sin(x)+z.*cos(x);
q4=integral3(fun3,0,pi,0,1,-1,1)
%symbolic function:
syms x z;
y=x^3+z^2;
I1=int(y)%would integrate w.r.t. x by default
I2=int(y,2,3)
I3=int(y,'z','a','b')
syms x y;
k=atan(x*y)+x^2;
I4=int(k)
syms x y z;
k=7*z*x-2*x*y+x^2;
I5=int(k,3,0)
f=x*y/(sqrt(x+y)*(1+x+y)^2);
I6=int(int(f,x),y)
f= @(x,y,z) x.*cos(y)+2*x.*cos(z);
I7=integral3(f,0,-Inf,2,100,pi,0)