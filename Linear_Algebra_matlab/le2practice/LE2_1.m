% Define matrix A and vector b
A = [5 -2 3;
     4 -3 4;
     4 -6 7];

b = [1;
     2;
     3];

% Perform QR decomposition
[Q, R] = qr(A);

% Solve the system Ax = b
x = R \ (Q' * b);

% Display result
disp('Solution x =');
disp(x);