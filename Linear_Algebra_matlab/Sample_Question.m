%Consider two vectrs in 2D space, v1=[1;2] and v2=[3:1]. Write a MATLAB
%program to plot the linear span of these two vectors by taking their
%linear combinations with scalar values and b in the range [-2,2]:       1.
%Generate scatter plot of all possible linear combinations of v1 and v2
%2. Plot the original vectorrs on the same graph using quiver.
%3.Label the axis and title the graph properly.



clc;
clear all;
close all;`

v1 = [1;2]; % First vector
v2 = [3;1]; % Second vector

[a, b] = meshgrid(-2:1:2, -2:1:2);
X = a * v1(1) + b * v2(1); 
Y = a * v1(2) + b * v2(2); 
figure;
hold on;
grid on;

scatter(X(:), Y(:), 50, 'b', 'filled'); % Plot the span of vectors

% Plot vectors
quiver(0, 0, v1(1), v1(2), 0, 'r', 'LineWidth', 2, 'MaxHeadSize', 0.5);
quiver(0, 0, v2(1), v2(2), 0, 'g', 'LineWidth', 2, 'MaxHeadSize', 0.5);

% Labels and Titles
xlabel('X-axis');
ylabel('Y-axis');
title('Span of Two Vectors in 2D');
legend('Span Points', 'Vector 1', 'Vector 2', 'Location', 'best');
axis equal;




10205
13908
15


2000
11353\
10005

15000
1164  
