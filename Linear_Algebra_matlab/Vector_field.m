nclc;
clear all;

[X, Y] = meshgrid(-5:0.5:5, -5:0.5:5);

f = X.^2 + Y.^2;

[Fx, Fy] = gradient(f, 0.5, 0.5);

quiver(X, Y, Fx, Fy, 'r');

title('Gradient Vector Field of f = X^2 + Y^2');
xlabel('X-axis');
ylabel('Y-axis');
axis equal;
grid on;