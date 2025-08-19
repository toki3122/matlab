clc;clear all;close all;
x=0:6;
y=[0 .8415 .9093 .1411 -.7568 -.9589 -.2794];
for i=1:4
    xk(i)=input(sprintf("enter Xk(%d): ",i));
    while(xk(i)>6 || xk(i)<0)
    disp('Xk must be between 0 and 6!!');
    xk(i)=input(sprintf("enter Xk(%d)",i));
end
end
n=input("enter the polynomial order(1/2/3): ");
while(n>3 || n<1)
    disp('wrong order!!');
    n=input("enter the polynomial order(1/2/3): ");
end
for l=1:4
for i=1:7
    if xk(l)>=x(i) && xk(l)<=x(i+n)
        x_seg=x(i:i+n);
        y_seg=y(i:i+n);
        break;
    end
end
yk_val=0;
for i=1:length(x_seg)
    m=1;
    for j=1:length(x_seg)
        if i~=j
            m=conv(m,poly(x_seg(j))/(x_seg(i)-x_seg(j)));
        end
    end
    yk_val=yk_val+m*y_seg(i);
end
yk(l)=polyval(yk_val,xk(l));
fprintf('\nPolynomial for xk(%d)=%.2f:\n',l,xk(l));
disp(poly2str(yk_val,'x'));
end
plot(x,y,xk,yk,'o');