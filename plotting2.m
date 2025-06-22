x=0:10:360;
plot(x,sind(x),'r*-',x,cosd(x),'b*:')
text(180,0,"t/2")
title("sin & cos")
figure
plot(sind(x),cosd(x))
figure
subplot(2,2,1)
plot(x,sind(x))
subplot(2,2,2)
plot(x,cosd(x))
subplot(2,2,3)
plot(sind(x),cosd(x))
subplot(2,2,4)
plot(cosd(x),sind(x))