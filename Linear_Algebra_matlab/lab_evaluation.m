
%Question 1
clc
clear all;
syms x y z
eq1=3*x+4*y-z==2;
eq2=x+2*y+z==11;
eq3=5*x-y+7*z==15;
[A,B]=equationsToMatrix([eq1,eq2,eq3],[x,y,z]);
X=linsolve(A,B);
x=X(1)
y=X(2)
z=X(3)
sum=x+y+z
disp('Option a, 6.38 (actually 6.375) is the correct answer')

figure;
plot3(x, y, z, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');
title('Question 1: Solution of the equation in 3-D');
grid on;

%Question 2:


R=randn(4,4)
disp('The rank of the random matrix is :')
r=rank(R)

%Question 3:




A = [4 3 2; 5 1 1]; % Coefficient matrix (2x3)
B = [5; 3];         % Right-hand side vector (2x1)

X=lsqr(A,B)
%or
%orX=A\B


disp('Least-squares solution X:');
disp(X);


