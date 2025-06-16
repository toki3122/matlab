%used to run multiline codes
x=[2 1]
y=2*x.^4-3*x.^3+5*x+23
t=3;
a=log(abs(t^2-t^3));
b=(75/2*t)*cos(0.8*t-3);
a
b
if(a<b)
    fprintf("b is greater than a");
else
    fprintf("a is greater than b");
end
fprintf("\n")
%whenever we finish a conditional statement thingy, we type "end"
a=5;
b=5;
if(a<b)
    fprintf("b is greater than a");
elseif(a>b)
    fprintf("a is greater than b");
else
    fprintf("a is equal to b");
end
    