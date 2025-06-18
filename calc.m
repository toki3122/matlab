function [add,sub,mult,div]=calc(x,y)%function
    add=addition(x,y);
    sub=subtraction(x,y);
    mult=multiplication(x,y);
    div=division(x,y);
end
function [add]=addition(x,y)%sub-function
    add=x+y
end
function [sub]=subtraction(x,y)
    sub=x-y
end
function [mult]=multiplication(x,y)
    mult=x*y
end
function [div]=division(x,y)
    div=x/y
end