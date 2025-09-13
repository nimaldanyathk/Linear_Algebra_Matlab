A=[4 -2 1;1 3 2;1 -1 2];
b=[7;10;5];
[Q R]=qr(A);
y=Q'*b;
x=linsolve(R,y)

A=[1 1;2 -2;1 -2]
b=[3;-4;5]
[Q,R]=qr(A);
y=Q'*b;
x=linsolve(R,y)


B=[1 4;2 3; 3 6]
v_perp=null(A','r')