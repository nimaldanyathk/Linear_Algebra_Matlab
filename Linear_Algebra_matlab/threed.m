clc;
clear;
close all;

v = [3, 4, 5]; % Define a 3D vector
figure;
hold on;
grid on;

quiver3(0, 0, 0, v(1), v(2), v(3), 0, 'r', 'LineWidth', 2, 'MaxHeadSize', 0.5);

xlabel("X-axis");
ylabel("Y-axis");
zlabel("Z-axis");
title('3D Vector Representation');
xlim([-5 5]);
ylim([-5 5]);
zlim([-5 5]);
axis equal;
legend("Vector");
view(3);
