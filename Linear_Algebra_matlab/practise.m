clc
clear all
syms x y
eq1=2*x+5*y==3;
eq2=7*x+2*y==1;
Sol=solve([eq1,eq2],[x,y]);
xval=Sol.x
yval=Sol.y


eq_1=10*x+5*y==1;
eq_2=5*x-2*y==3;
Sol=solve([eq_1,eq_2],[x,y]);
xval=Sol.x
yval=Sol.y

syms x y
eq1=2*x+5*y==3;
eq2=7*x+2*y==1;
[A,B]=equationsToMatrix([eq1,eq2],[x,y]);
r=rank(A);
if r==2
    fprintf("It has a unique solution")
else
    fprintf("The solution is not unique")
end
X=linsolve(A,B);
xsol=X(1)
ysol=X(2)


% Define the matrix A and vector b
A = [4 3 -1; 3 2 -3; 1 -1 1]; 
b = [4; 1/2; 6];

% Solve the system of equations
X = A\b; %inverse function

% Extract x, y, z from the solution vector
x = X(1);
y = X(2);
z = X(3);

disp(X)

% 3D plotting
figure;
plot3(x,y,z, 'r.', 'MarkerSize', 30,'MarkerFaceColor', 'b');
hold on; grid on;
xlabel('x');
ylabel('y');
zlabel('z');
title('3D Point Plot');
hold off;