clear all
close all
clc
a=deg2rad(30); %angle of projectile
u=50; %initial velocity m/s
g= 9.8; %accleration due to gravity m/s^2
%

h=(u*u*sin(a)*sin(a))/(2*g); %maximum height
R= (u*u*sin(2*a))/g; %range 
T= (2*u*sin(a))/g;  %trajectory


x=linspace(0,R,20);
Y=[];
for i=1:20
    y=(x(i).*tan(a))-(((1/2)*(g.*x(i).*x(i)))/(u*u*cos(a)*cos(a)) ); %function of y wrt x
    Y=[Y ,y];
end
plot(x,Y,"-o",'linewidth',4,'MarkerSize',7,'MarkerFaceColor','g', 'Color', 'k')
xlabel("Distance covered by particle")
ylabel("Height of particle")
title("Projectile Motion")