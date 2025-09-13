%Graphing system of Equations

syms x y
eq1=2*x-y==7
eq2=x+y==2
[A,B]=equationsToMatrix([eq1,eq2],[x,y])
X=linsolve(A,B)
fimplicit(eq1);
hold on;
fimplicit(eq2);
hold off;