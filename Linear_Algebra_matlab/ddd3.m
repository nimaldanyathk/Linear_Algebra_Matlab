clc;
clear all;

[X, Y] = meshgrid(1:0.5:10, 3:0.5:10);

Z = 4 * (X.^2) + 4 * (Y.^2);

surf(X, Y, Z);
shading interp; 
colormap jet; 
colorbar; 
title('3D Surface Plot of Z = 4(X^2) + 4(Y^2)');
xlabel('X-axis');  
ylabel('Y-axis');
zlabel('Z-axis');
grid on;

view(3);