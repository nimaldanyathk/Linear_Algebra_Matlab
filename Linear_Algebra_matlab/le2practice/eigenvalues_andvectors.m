A=[4,-2,1;-2,4,-2;1,-2,3];
[eigenvectors, eigenvalues]=eig(A);
syms lambda;
char_poly=det(A-lambda*eye(size(A)))
fplot(char_poly,[-10,10])

B=[4 1;2 3];
[eigenve, eigenval]=eig(B);
syms lambda;
char_P=det(B-lambda*eye(size(B)))
fplot(char_P,[-10, 10])