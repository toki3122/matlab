clc;clear all;close all;
f=inline('(x-2)*(x+2)*(x-1)');
tol=.01;
root_tol=0.05;
count=0;
x=-10:.5:10;
for i=1:length(x)-1
xlow=x(i);
xup=x(i+1);
ylow=f(xlow);
yup=f(xup);
if ylow*yup>0
    %fprintf('the root is not likely in the interval %.2f to %.2f\n',xlow,xup);
else
    fprintf('root is in the interval %.2f to %.2f\n',xlow,xup);
    iter=0;
    while xup-xlow>=tol
        iter=iter+1;
        xmid=(xlow+xup)/2;
        ymid=f(xmid);
        if ymid==0
            count=count+1;
            icount(count)=iter;
            break;
        else
            ylow=f(xlow);
            yup=f(xup);
            if ylow*ymid>0
                xlow=xmid;
            else xup=xmid;
            end
        end
    end
    if count==0 || all(abs(root-xmid)>root_tol)
        count=count+1;
        root(count)=xmid;
        icount(count)=iter;
    end
end
end
disp('real roots found: ');
for i=1:count
    fprintf('root: %.4f iteration: %.2f\n',root(i),icount(i));
end