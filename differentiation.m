clc;clear all;close all;
syms x;
f=exp(x)*sin(x);
D1=diff(f)
f=x^2-3/x+5;
D2=diff(f)
D3=diff(diff(f))
syms x y;
f=x*sin(x*y);
D4=diff(f,x,y)
syms f(x);
y=5*f(x)^3*diff(f(x),x);
D5=diff(y,f(x))
syms t;
f=2*t*x^5*cos(t^2*x);
D6=diff(f,t,x)
f=5*t^8+2*t^3+10;
D7=diff(f,3)
D8=diff(f,5)
D9=diff(f,7)
