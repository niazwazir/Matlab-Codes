%LECTURE NO 11: SCALAR AND ARRAY OPERATIONS
2^((8+2)/5)
A = [1 2 3;4 2 1];
B = [2 3 4; 5 1 2];
C = A + B
D = A - B
E = 2 + A
% a + b = This is array or matrix addition
% a - b = This is array or matrix subtraction
% a.*b = This is element-by-element array multiplication
% a*b = This is matrix multiplication. The number of columns in a a must be
        % equal the number of rows in b. 
% a./b = Array Right Division, This is element by element division of a and b
% a.\b = Array Left Division, This is element by element division of a and
% b but with b in the numerator . both arrays must be the same shape or one
% of them must be a scalar actually means b/a
% a/b = Matrix Right Division
% a\b = Matrix Left Division
% a.^b = Array Exponentiation
% THE LEFT DIVISION OPERATOR A\B IS DEFINED TO BE inv(A)*B
%WHICH IS USED TO SOLVE THE SIMULTANEOUS EQUATIONS BECAUSE x = A^-1*B

%SOLVE THE SIMULTANEOUSLY EQUATIONS

a = [3 4 -2 2;4 9 -3 5;-2 -3 7 6;1 4 6 7]
b = [2;8;10;2]
x=inv(a)*b