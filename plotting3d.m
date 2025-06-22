x=linspace(0,10*pi,1000);
y=sin(x);
z=cos(x);
%plot3(x,y,z)
xlabel("angle");
ylabel("Sin(x)");
zlabel("Cos(x)");
grid on
%comet3(x,y,z)%animation
z=[1 2 3 4 5 6 7 8 9 10;1 3 5 7 9 11 13 15 17 19;2 4 6 8 10 12 14 16 18 20];
%mesh(z)%3d in 2d
x=linspace(0,20,10);
y=linspace(0,20,3);
%the dimension of x and y together has to be the same as z
%mesh(x,y,z)
%surf(x,y,z)
%[x y z]=peaks;
[x y z]=meshgrid;
%subplot(2,2,1);
%mesh(x,y,z)
%subplot(2,2,2);
surf(x,y,z)
%subplot(2,2,3);
%contour(x,y,z)
%subplot(2,2,4);
%pcolor(x,y,z)
colormap(summer)%3d chart color
%shading flat %defines the shading type of the graph
text(2,4,4,"lelelelele")
axis tight
%axis([-2 2 0 4 0 10])