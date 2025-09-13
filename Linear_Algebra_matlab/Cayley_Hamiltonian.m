function CH(A)
    A = [2 1; 3 4];
    
    % Check whether the input matrix is a square matrix
    [m, n] = size(A);
    if m ~= n
        error('Input matrix is not a square matrix.');
    end

    % Defining characteristic polynomial of input square matrix
    p = poly(A);

    % Cayley-Hamilton theorem calculation
    r = polyvalm(p, A);

    % Display the result
    disp('Cayley-Hamilton Theorem:');
    disp(r);
end