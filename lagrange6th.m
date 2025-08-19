clc;clear all;close all;
dataX=0:6;
dataY=[0 .8415 .9093 .1411 -.7568 -.9589 -.2794];
n=length(dataX);
x=0:0.5:6;
sum=0;
for i=1:n
    prod=1;
    for j=1:n
        if i~=j
            prod=conv(prod,(poly(dataX(j))/(dataX(i)-dataX(j))));
        end
    end
    sum=sum+conv(prod,dataY(i));
end
y_exp=sum;
y=polyval(y_exp,x)
plot(dataX,dataY)
hold on
plot(x,y,'o')