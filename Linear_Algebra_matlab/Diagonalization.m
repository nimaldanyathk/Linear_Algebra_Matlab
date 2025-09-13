clear all   % Clears all variables from the workspace
clc         % Clears the command window
disp("Matlab Implementation for Diagonalization of a Square Matrix")

% Input matrix
A = input("Enter a matrix A: ");  

% Eigen decomposition
[P, D] = eig(A);  % P = eigenvectors matrix, D = diagonal matrix of eigenvalues

% Verifying diagonalization
D1 = inv(P) * A * P;  

% Display the result
disp('Matrix D1 (Should be identical to D):')
disp(D1)



clc;
clear all;
%problem 1: check if a matrix is diagonalizable. Given the matrix A=[4 1; 6
%-1] .Find the eigenvalues and eigenvectors. Determine if A is
%diagonalizable.
%problem 2 L Compute the Diagonal Form  , For a matrix A=[2 0 0; 1 3 1; 0 0
%3], Find the diagonal matrix D and the matrix P such that A=PD P^-1a

% Problem 1: Diagonalizability Check
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

% Verifying A = P * D * inv(P)
A_reconstructed = P * D * inv(P);
disp('Reconstructed Matrix (should match A):');
disp(A_reconstructed);