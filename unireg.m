function unireg(x,yo,order)
for m=1:order+1
    for s=1:order+1
        A(m,s)=sum(x.^(m+s-2));
    end
end
for m=1:order+1
    B(m,1)=sum((x.^(m-1)).*yo);
end
a=A\B;
e=a';
e=fliplr(e);
ym=polyval(e,x);
plot(x,yo,'o');
hold on
plot(x,ym);
end