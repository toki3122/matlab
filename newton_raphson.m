clc;clear all;close all;
syms x;
fs=x^2+3;
f=matlabFunction(fs);
fderiv=matlabFunction(diff(f,x));
xk=2+i;
tol=0.001;
iter=0;
while abs(f(xk))>tol
xkp1=xk-f(xk)/fderiv(xk);
xk=xkp1;
iter=iter+1;
end
root=xk;
disp(root)
disp(iter)