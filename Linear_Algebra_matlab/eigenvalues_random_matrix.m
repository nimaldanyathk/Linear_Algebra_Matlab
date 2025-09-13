%Define  a random matrix
A=rand(3);

%Calculate eigenvalues and eigenvectors
[V, D]=eig(A);

%Plot the eigenvectors

figure;
quiver3(0,0,0,V(1,1),V(2,1),V(3,1),'r','LineWidth',2);
hold on;
quiver3(0,0,0,V(1,2),V(2,2),V(3,2),'g','LineWidth',2);
quiver3(0,0,0,V(1,3),V(2,3),V(3,3),'b','LineWidth',2);
title("EIGENVALUES OF A RANDOM MATRIX");
xlabel('X');
ylabel('Y');
zlabel('Z');
axis equal;


