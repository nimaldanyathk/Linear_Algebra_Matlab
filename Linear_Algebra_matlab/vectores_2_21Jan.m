%LAB 2- January 21

A=rand(3,3)
B=rand(3,3)
%disp(A)
%disp(B)
C=A*B
%disp(C);
disp("C(3,2):")
disp(C(3,2));
D=A(3,:)*B(:,2)
%disp(D)
E=inv(A)
%disp(E);

%Question

A=[2 1 -2; 3 0 5; 4 2 -4]
B=[0 2 -3; 3 -1 5; 4 0 2]

C=A+B;
disp("A+B=");
disp(C);


D=A-B;
disp("A-B=");
disp(D);


E=3*A;
disp("3*A=");
disp(E);


F=A*B;
disp("A*B=");
disp(F);

X=eye(4,4)
Y=eye(2,4)

%Question 2:

A=[1 2 3; 0 1 2; 3 0 -4]
B=[17 0 13; 0 -8 4; 7 6 -5]


C=2*A-B;
disp("2A-B");
disp(C);

disp("Associativity");
D=B+C;
E=A+D;
disp("A+(B+C)");
disp(E);

F=A+B;
G=F+C;
disp("(A+B)+C");
disp(G);

disp("Commutativity");
H=A+B;
disp("A+B=");
disp(H);
I=B+A;
disp("B+A=");
disp(I);

disp("Distributivity");
k=5;
J=k*H;
disp("5(A+B)=");
disp(J);

K=k*A;
L=k*B;
M=K+L;
disp("5A+5B=");
disp(M);

k=10;
J=k*H;
disp("10(A+B)=");
disp(J);

K=k*A;
L=k*B;
M=K+L;
disp("10A+10B=");
disp(M);

%Solution to a system of linear equations

A=[3 2 -1; -1 3 2; 1 -1 -1];
b=[10; 5; -1];
x=inv(A)*b

A=[1 1 -2 4; 2 2 -3 1; 3 3 -4 -2; 2 5 -3 -2];
b=[5; 3; 1; 4];
x=inv(A)*b


%Solving system of equation without using matrix

%2x+5y=3, 7x+2y=1

clear all
clc
syms x y
eq1=2*x+5*y==3;
eq2=7*x+2*y==1;
Sol=solve([eq1,eq2],[x,y]);
xsol=Sol.x
ysol=Sol.y


syms x y
eq1=2*x+3*y==8;
eq2=4*x-9*y==20;
Sol=solve([eq1,eq2],[x,y]);
xsol=Sol.x
ysol=Sol.y



syms x y
eq1=2*x+5*y==3;
eq2=7*x+2*y==1;
[A,B]=equationsToMatrix([eq1,eq2],[x,y]);
r=rank(A);
if r==2
    fprintf("There exist a  unique solution")
else
    fprintf("The solution is not unique")
end
X=linsolve(A,B);
xsol=X(1)
ysol=X(2)