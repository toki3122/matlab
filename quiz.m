function avg=quiz(a)
lowest=a(1,1);
if a(1,2)<lowest
    lowest=a(1,2);
end
if a(1,3)<lowest
    lowest=a(1,3);
end
if a(1,4)<lowest
    lowest=a(1,4);
end
total=sum(a);
bestthree=total-lowest;
avg=bestthree/3;
end