clc
clear all;
syms x
eq1=x^2+x+1;
ezplot(eq1,[-2,2]);

%or
clc;
clear;
syms x;

y = x^2 + x + 1;

fplot(y, [-2, 2], 'b', 'LineWidth', 3);

grid on;
title('Plot of y = x^2 + x + 1');
xlabel('x-axis');
ylabel('y-axis');


%or

clear all;
x=-2:0:1:2;
plot(x,x.^2+x+1)
y = x.^2 + x + 1;
plot(x,y)


%or using ezplot

