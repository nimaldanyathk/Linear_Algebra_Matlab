A = [3 4 0 7;
     1 -5 2 -2;
    -1 4 0 3;
     1 -1 2 2]

% Column space
[r, pivot_cols] = rref(A);
column_space = A(:, pivot_cols)

% Row space
row_space = r(any(r,2), :)

% Null space
null_space = null(A, 'r')