clc;
clear all;
close all;

v1=[1;2];
v2=[3;1];

[a,b]=meshgrid([-2:0.5:2, -2:0.5:2 ]);
X=a*v1(1)+b*v2(1);
Y=a*v1(2)+b*v2(2);

figure; grid on; hold on;
scatter(X(:),Y(:),20,'b','filled');
quiver(0,0,v1(1),v1(2),0,'r','LineWidth',2);
quiver(0,0,v2(1),v2(2),0,'g','LineWidth',2);

xlabel('X-Axis');
ylabel('Y-Axis');
title('Span of two vectors');
legend('Span ','Vector 1','Vector 2');


