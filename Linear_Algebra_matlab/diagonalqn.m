A = [4 1; 6 -1];

% Finding Eigenvalues and Eigenvectors
[eigenvectors, D] = eig(A);

% Display Results
disp('Eigenvalues of A:');
disp(diag(D));

disp('Eigenvectors of A:');
disp(eigenvectors);

% Check if matrix is diagonalizable
if rank(eigenvectors) == size(A, 1)
    disp('The matrix is diagonalizable.');
else
    disp('The matrix is NOT diagonalizable.');
end
% Problem 2: Compute Diagonal Form
A = [2 0 0; 1 3 1; 0 0 3];

% Finding D and P
[P, D] = eig(A);

% Display Results
disp('Diagonal Matrix D:');
disp(D);

disp('Matrix P:');
disp(P);
