clc
clear all
A=[1 2 5; 6 5 4; 7 8 9]
inv(A)
rank(A)
A'
eye(3)
A*A
2.*A
randn(3,3)
B=[2 4 6; 8 10 12; 45 54 32]
C=B.*A
D=B*A

clear all
clc
A=[2 1 -2;3 0 5;4 2 -4]
B=[0 2 4;3 -1 5;4 0 2]
A+B
A-B
3*A
A*B
eye(4)
eye(2,4)

clear all
clc
A=[1 2 3;0 1 2;3 0 -4]
B=[17 0 13;0 -8 4;7 6 -5]
2*A-B

C=A+B
k=5
k*(C)
(k*A)+(k*B)


clc
clear all
A=[3 2 -1; -1 3 2; 1 -1 -1]
b=[10; 5; -1]
x=inv(A)*b

clc
clear all
A=[1 1 -2 4;2 2 -3 1;3 3 -4 -2;2 5 -3 -2]
b=[5;3;1;4]
x=inv(A)*b
A(4)

clear all
syms x y 
eq1=2*x+3*y==8;
eq2=4*x-9*y==20;
Sol=solve([eq1,eq2],[x,y]);
xsol=Sol.x
ysol=Sol.y

clear all
syms x y
eq1=2*x+3*y==8;
eq2=4*x-9*y==20;
[A,B]=equationsToMatrix([eq1,eq2],[x,y])
r=rank(A)

if r==2
    fprintf("There exists a unique solution")
else
    fprintf("No solution")
end

X=linsolve(A,B);

xsol=X(1)
ysol=X(2)


clear all
syms x y
A=[2,1;1,3]
B=[5;6]
X=A\B;
x=X(1)
y=X(2)
figure;
plot(x,y,'ro','MarkerSize',10);
hold on; grid on;

xlabel('x')
ylabel('y')
title("Uniquesolution")
hold off;


clear all



clear all
syms x y z
eq1=x+y+z==6;
eq2=3*x-2*y-z==5
eq3=2*x+3*y-2*z==2

[A,B]=equationsToMatrix([eq1,eq2,eq3],[x,y,z])
X=linsolve(A,B)
x=X(1)
y=X(2)
y=X(3)

rightinv=A'*inv(A*A')
leftinv=inv(A'*A)*A'

C=[1 0 1; 0 1 0]
rightinv=C'*inv(C*C')

D=[4 3; 8 6]
leftinv=inv(D'*D)*D'
rightinv=D'*inv(D*D')
y=pinv(D)

clear all
syms x y
eq1=2*x-3*y==8;
eq2=4*x+6*y==1;
Sol=solve([eq1,eq2],[x,y])

clc
clear all
syms x y
eq1=2*x-5*y==9;
eq2=10*x+9*y==78;
[A,B]=equationsToMatrix([eq1,eq2],[x,y])
X=linsolve(A,B)
x=X(1)
y=X(2)
figure;
plot(x,y,'b.','MarkerSize',20)
hold on; grid on;
xlabel('x')
ylabel('y')
title('Unique Solutions')
hold off;

clc
clear all
syms x y

%Infinitely many solution case
% x+y=3 and 2x+2y=6 solve the system of equation and plot the solution
eq1=x+y==3
ysol=solve(eq1,y)
xvalues=linspace(-5,5,100);
y=double(subs(ysol,x,xvalues));
figure;
plot(xvalues,y,'ro','MarkerSize',10,'MarkerFaceColor','b')
hold on; grid on;


clear all;
clc
A=[1 1; 2 2];
B=[3;6]
ppp=pinv(A)*B