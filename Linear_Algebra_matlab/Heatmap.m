[X, Y]= meshgrid(-2*pi:0.1:2*pi, -2*pi:0.1:2*pi);

Z=cos(X).* sin(Y);

figure;
imagesc(Z);
colorbar;
title('HeatMap of f(x, y= cos(x)* sin(y)');
xlabel('x');
ylabel('y');
axis equal;