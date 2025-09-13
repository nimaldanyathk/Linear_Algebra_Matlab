%Solve the following system 2x+y+z=0, 3x+2y+3z=18, x+4y+9z=16 using QR
%decomposition

A = [2 1 1; 3 2 3; 1 4 9];
b = [0; 18; 16];

[Q, R] = qr(A)

x = R \ (Q' * b);
x=A\b

disp('Solution is :');
disp(x);  


A=[-2,-1,1;1,3,2;1,-1,2]
b=[1;12;5]
[Q, R] = qr(A)

x = R \ (Q' * b);
x=A\b

A=[4,-2,1;1,3,2;1,-1,2];
b=[7;10;5];
[Q,R]=qr(A);
y=Q'*b;
x=linsolve(R,y)

%Ax=B  QRx=B Q'QRx=BQ'  Rx=BQ', y=Q'*b x=linsolve(R,y)


A=[1,0,1;0,2,-2;0,1,-2];
b=[3;-4;5];
[Q,R]=qr(A);
y=Q'*b;
x=linsolve(R,y)







