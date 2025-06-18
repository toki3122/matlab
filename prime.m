n=input("enter n: ");
count=0;
for i=2:n-1 %or sqrt(n)
    if mod(n,i)==0
        count=count+1;
        break;
    end
end
if count==0
    disp("prime number!!");
else
    disp("not a prime number!!");
end