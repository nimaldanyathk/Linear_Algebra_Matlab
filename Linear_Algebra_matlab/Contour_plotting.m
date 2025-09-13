T=0:0.01:1;
plot(cos(2*pi*T),sin(2*pi*T),'r','LineWidth',3);
axis square;
grid on;



%For contour plotting, we can use mesh command
syms x y ;
z=x^2+y^2;  %Here z is dependent on x and y, therefore it is 2-Dimensional
meshgrid(z)


%
clc
clear all
[X,Y]=meshgrid(1:0:10,3:0:1:10);
Z=4*(X.^2)+4*Y.^2;
surface(X,Y,Z)
view(3)