clc;
clear;
close all;

v=[3: 4];
figure;
hold on;
grid on;
quiver(0,0, v(1), v(2), 0, 'r', 'LineWidth', 2, 'MaxHeadSize', 0.5);

xlabel("X- axis");
ylabel("Y- axis");
title('2-D Vector Representation');
xlin([-5 5]);
ylin([-5 5]);
axis equal;
legend("Vector");