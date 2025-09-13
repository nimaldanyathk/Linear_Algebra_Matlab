clc;
clear all;
close all;

v1=[1;2];
v2=[2;1];
[a,b]=meshgrid([-2:0,5:2, -2:0.5:2]);
X=a*v1(1)+b*v2(1);
Y=a*v1(2)+b*v2(2);

figure; hold on; grid on;
scatter(X(:),Y(:),20,'r','filled');
quiver(0,0,v1(1),v1(2),0,'r','LineWidth',2);
quiver(0,0,v2(1),v2(2),0,'g','LineWidth',2);

xlabel('X-Axis');
ylabel('Y-Axis');
legend('Span','Vector1','Vector2');
title('Span of two vectors.')

