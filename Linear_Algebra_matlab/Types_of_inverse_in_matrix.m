%Left Inverse

A=[2 -1; 1 1]
leftinv=inv(A'*A)*(A')

%right Inverse

rightinv=(A')*inv(A*A')

%Infinitely many solution case
% x+y=3 and 2x+2y=6 solve the system of equation and plot the solution

A=[1,1;2,2];
B=[3;6];
x=pinv(A)*B;
syms x y
eqn= x+y==3;
ysol=solve(eqn,y) %Solve for y in terms of x
xvalues=linspace(-5,5,100);
y=double(subs(ysol,x,xvalues));

%plot the solution
figure;
plot(xvalues,y,'ro','MarkerSize',10,'MarkerFaceColor','r')
xlabel('x')
ylabel('y')
hold off;


%A matric A has a right inverse if A is full row rank( all its rows are
%linearly dependent)

%Pseudoinverse generalises the inverse for any matrix, even if it is not
%square or full rank, which is computed using the pinv function, which
%applies the singular value decomposition method

%we can use inv only if det!=0 and iff its a square matrix


