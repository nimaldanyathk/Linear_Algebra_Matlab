%28 January 2025-- Tuesday_

% For a unique solution case, solution is a point!

%another notation ofr inverse

A=[3 2 -1; -1 3 2; 1 -1 -1];
b=[10; 5; -1];
x=A\b %backslash also denotes inversee




% 2x+y=5 and x+3y=6 solve the systems of equation and plot the solution.
A=[2,1;1,3];
B=[5;6];
X=A\B;   %solution matrix
disp(X)
x=X(1)
y=X(2)
%plot the solution points
figure;
plot(x,y,'b.','MarkerSize',10)
hold on;
xlabel('x');
ylabel('y');
title('Uniquesolution plot')
hold off;                                                           