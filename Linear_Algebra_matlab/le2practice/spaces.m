A=[1 7 9; -3 2 1; 3 6 5]

[B,pivot_cols]=rref(A)

col_space=A(:,pivot_cols)

null_space=null(A,'r')