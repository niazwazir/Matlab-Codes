%LECTURE NO: 18: POLYNOMIAL HANDLING PART1 ROOTS OF POLUNOMIAL
% If you given polynomials and find roots or roots given find polynomials
%EXAMPLE y(x) = 3x^4 + 2x^3 + x^2 - x + 5
y = [ 3 2 1 - 1 5];

%EXAMPLE y(x) = 8x^7 + 6x^6 + 3x^4 +x^2
y = [ 8 6 0 3 0 1 0 0];
r = roots(y)
%change roots into poly
b = poly(r)
c = 8*b   % we multiply 8 becuase you count number of rwos in r pr in roots is 8


% if x is zero than what is the value of polynomial
% EXAMPLE p(x) = x^3 + x -1, if x is zero than what is value of p(x)
p = [1 0 1 -1];
polyval(p,0)


% EXAMPLE p(x) = x^3 + x -1, if x is 2 than what is value of p(x)
p = [1 0 1 -1];
polyval(p,2)


