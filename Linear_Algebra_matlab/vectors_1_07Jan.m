%Vectors-Introduction[ Representing row and column vectors ]


x=[5 4 3 2 6] %row vector
y=[7; 8; 9; 5;] %column vector
x(3)  %Addressing a vector in row matrix.
y(1)  %Addressing a vector in column matrix.
x(2:4) %Slicing a vector.


%MATRICES

A=[1 2 3; 4 5 6; 7 8 9]
A(2,3)
A(:,1) %only all rows in first column  1 4 7

disp("Transpose");
B=A';
disp(B);

disp("Identity Matrix");
eye(3)

B=[3 4 5; 6 7 8; 9 10 11];
D=[32 4 5; 6 21 8; 9 21 11];


disp("Addition");
C=A+B;
disp(C);

disp("Subtraction");
C=A-B;
disp(C);

disp("Scalar Multiplication")
B=5*A;
disp(B);

disp("Matrix Multiplication")
C=B*A;
disp(B);

disp("Matrix Inverse")
C=inv(D);
disp(C);
disp("Rank of the matrix")
rank(B)

disp("Matrix Powers")
C=A.^2; %Squares each element in the matrix
disp(C);

disp("Square")
C=A*A;
disp(C);

disp("Determinant")
det(A)

E=3.*A

F=3*A

e=B.*A  %Element-Wise Multiplication
f=B*A   %Normal Scalar Multiplication



%Random Matrix

C=rand(3,3)
D=det(C)
A=rand(2,3)

B=randn(2,3)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%January-21 LAB 2

