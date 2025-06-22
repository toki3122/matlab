t=0:15:360;
x=sind(t);
%stem() is used to get a discrete data plot
%stem(x)%only the value of x
%stem(t,x)%both values
k=0:pi/100:pi;
y=sin(k);
%polar(k,y)
x=0:1:100;
y=5*x.^2;
%semilogx(x,y)
%semilogy(x,y)
%loglog(x,y)
grid on
x=[2 4 6 8 10 4 6 2];
bar(x)
y=[1 5 9;2 6 8];
%bar(y)
%barh(y)
%bar3(y)
%pie(x)
%pie3(x)
%hist(x)
%hist(x,50)
x=randn(100,1);
y=10*sin(x)+randn(100,1);
plot(x,y)
scatter(x,y,"k","filled")
figure
plot(x,y)