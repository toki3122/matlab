clc;clear all;close all;
A=zeros(3,3);
disp('enter A(columnwise): ');
for i=1:9
    A(i)=input(sprintf('enter A[%d]: ',i));
end
sum=0;
for i=1:9
    if mod(A(i),2)==0
        sum=sum+A(i);
    end
end
B=zeros(4,4);
for i=1:16
    if(i>=1 && i<=3)
        B(i)=A(i);
    end
    if(i>=4 && i<=6)
        B(i+1)=A(i);
    end
    if(i>=7 && i<=9)
        B(i+2)=A(i);
    end
end
for i=4:4:12
    B(i)=B(i-1)+B(i-2)+B(i-3);
end
for i=13:15
    B(i)=B(i-12)+B(i-8)+B(i-4);
end
B(16)=sum;
B