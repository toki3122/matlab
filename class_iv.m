a=[1,2,3];
b=[4 5];
c=[a b];
c

c=[a;b]%not possible

b=[4,5,6];
c=[a;b]

%zero matrix
zeros(3)

zeros(2,3)

ones(4)

ones(2,3)

ones(3)*2

%identity matrix
eye(3)

rand(3) %random number(0-1)

rand(3)*10

fix(rand(3))*10

fix(rand(3)*10)

fix(rand(3)*10)+5

%fixed num from 100 to 200
fix(rand(5)*100)+100

A=[1 2 3 4 5];
A+1 %1 will be added to every element

%power
A.^2

A=[1 2 3;4 5 6;7 8 9];

A(1,3)%calling a specific element
%calling mutliple elements
A(2,1:2)

A(2:3,2:3)

A' %transpose

trace(A)

det(A)

B=[1 2;3 4];
det(B)

inv(B)

size(B)

% rownum colnum
max(A)

%1strowmax 2ndrowmax 3rdrowmax
min(A)

min(B)

%checks columnwise
min(min(A))

min(max(A))

diary off
