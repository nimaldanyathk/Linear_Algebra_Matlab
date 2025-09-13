%Least Square method

%Its an approximation method, to find inverse or solution of a rectangular
%matrix.\


A=[2,1;1,-1;1,3]
B=[10;3;12]
Solution1=A\B
Solution2=lsqr(A,B)  %both \ and lsqr generates the same result

%Newton's oiler method!



%Solve the system of linear eqns

syms x y z

% Define the equations
eq1 = x + y + z == 6;
eq2 = 3*x - 2*y - z == 5;
eq3 = 2*x + 3*y - 2*z == 2;

[A, B] = equationsToMatrix([eq1, eq2, eq3], [x, y, z]);

X = linsolve(A, B);

% Extract solutions
xsol = X(1)
ysol = X(2)
zsol = X(3)


%2.
A=[1 0 1; 0 1 0];
rightinv=(A')*inv(A*A')

%3.
A=[4 3; 8 6]
leftinv=inv(A'*A)*(A')
rightinv=(A')*inv(A*A')

pseudo=pinv(A)

disp("The matrix has no left inverse, right inverse, but has pseudo inverse")

clear all
A=[2 0;-1 1;0 2]
b=[1;0;-1]
A\b
x=lsqr(A, b)