clc;clear all;close all;
%torus
a=linspace(0,2*pi,50);
b=linspace(0,2*pi,50);
[a,b]=meshgrid(a,b);
x=(3+cos(a)).*cos(b);
y=(3+cos(b)).*sin(a);
z=sin(b);
surf(x,y,z);
figure
%mobius strip
u=linspace(0,2*pi,100);
v=linspace(-0.3,0.3,20);
[u,v]=meshgrid(u,v);
x=(1+v.*cos(u/2)).*cos(u);
y=(1+v.*cos(u/2)).*sin(u);
z=v.*sin(u/2);
surf(x,y,z);
figure
%spherical harmonics
r=abs(sin(3*a).*sin(2*b));
x=r.*sin(b).*cos(a);
y=r.* sin(b).*sin(a);
z=r.*cos(b);
surf(x,y,z);
figure
%enneper surface
u=linspace(-2, 2,90);
v=linspace(-2, 2,90);
[u,v]=meshgrid(u,v);
x=u-(u.^3)/3+u.*v.^2;
y=v-(v.^3)/3+v.*u.^2;
z=u.^2-v.^2;
surf(x,y,z);
figure
%parametric heart surface
x=16*sin(u).^3;
y=13*cos(u)-5*cos(2*u)-2*cos(3*u)-cos(4*u);
z=v;
surf(x,y,z);
