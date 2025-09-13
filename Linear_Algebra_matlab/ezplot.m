clc;
clear all;

hold on;

h1 = fplot(@(x) cos(x), [0, 10], 'r', 'LineWidth', 2);

h2 = fplot(@(x) sin(x), [0, 10], 'b', 'LineWidth', 2);
hold off;

title('cos(x) and sin(x)');
xlabel('x-axis');
ylabel('y-axis');
legend([h1, h2], 'cos(x)', 'sin(x)'); % Ensures correct legend labeling
grid on;


%Each times we execute a plotting command MATLAB erases the old plot and
%draws a new one to draw two or none plots in a single window, use hold on
%and hold off


%%%%
clc;
clear all;



h1 = fplot(@(x) cos(x), [0, 10], 'r', 'LineWidth', 2);
hold on;
h2 = fplot(@(x) sin(x), [0, 10], 'b', 'LineWidth', 2);
hold on;
h3 = fplot(@(x) tan(x), [0, 10], 'b', 'LineWidth', 2);

hold off;

title('cos(x) and sin(x) and exp(x)');
xlabel('x-axis');
ylabel('y-axis');
legend([h1, h2,h3], 'cos(x)', 'sin(x)', 'tan(x)'); % Ensures correct legend labeling
grid on;