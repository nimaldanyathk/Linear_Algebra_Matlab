A = [4 1;
     2 3];

% Step 1: Eigenvalues and Eigenvectors
[eigen_vector, eigen_value] = eig(A);

% Step 2: Characteristic Polynomial
syms lambda
char_poly = det(A - lambda * eye(size(A)));

% Display results
disp('Eigenvalues:');
disp(eigen_value);

disp('Eigenvectors:');
disp(eigen_vector);

disp('Characteristic Polynomial:');
disp(char_poly);