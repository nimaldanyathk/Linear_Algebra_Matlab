
A=magic(3)
RA=rref(A)

B=[1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]
RB=rref(B)

Bm=magic(4)
[RB,p]=rref(Bm)

%%%%%FINDING PIVOT


A=[1 2 3; 4 5 6; 7 8 9];
[R,pivot_cols]=rref(A)

col_space=A(:,pivot_cols)

rref_A = rref(A);   % Compute the Reduced Row Echelon Form (RREF) of A
row_space = rref_A(any(rref_A, 2), :) % Select nonzero rows (this 

A=[1 2 3; 4 5 6]
null_space=null(A,'rational')  %give rational or r



%left-transpose: 
null_space=null(A','rational')


D=[1 1 4 1 2;0 1 2 1 1;0 0 0 1 2;1 -1 0 0 2;2 1 6 0 1]
[Rd,p]=rref(D)
col_space=D(:,p)
row_space=Rd(any(Rd,2),:)
null_space=null(D,'r')
null_space_left=null(transpose(D),'r')

