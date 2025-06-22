a=[1 2 3];
b=[1 -1 3];
x=dot(a,b)%dot product
sum(a.*b)
a*b'
cross(a,b)
d=sqrt(a(1,1)^2+a(1,2)^2+a(1,3)^2);
e=sqrt(b(1,1)^2+b(1,2)^2+b(1,3)^2);
t=acosd(x/(d*e))
a=[1 2 3;4 5 6;7 8 9];
b=[1;1;1];
inv(a)*b
a\b