x=[0&0 0&1 1&0 1&1]
y=[0|0 0|1 1|0 1|1]
z= ~0
a=[xor(0,0) xor(0,1) xor(1,0) xor(1,1)]
any(5)%non zero=1, zero=0
%for a matrix, if any one element is non zero, the output will be zero
all([1 2 3 0])%all non zero=1
all([1 2 3])
s=spiral(3);
find(s>=6)%searches column wise
numbers=[33 40 41 47 48 93 36 96 98 44 54 87 67 66 81 74];
passed=find(numbers>=40)
failed=find(numbers<40)