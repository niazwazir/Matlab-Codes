%LECTURE NO: 19: POLYNOMIAL HANDLING PLYNOMIAL ADDITION, SUBTRACTION AND 
%MULTIPLICATION PARTIAL FRACTION EXPANSION OF POLYNOMIALS
% for addition/subtraction p and q vectors have same length and size means
%same number of elements
%ADD TWO POLYNOMIAL P(X) = 3x^4 + 2x^3 + x - 1
% AND POLYNOMIAL Q Q(x) = 5x^3 - 2x^2 + 6
p = [3 2 0 1 -1];
q = [0 5 -2 0 6];
sum = p+q
sub = p - q

% MULTIPLICATION OF TWO POLYNOMIALS we use function conv(p,q)
%p(x) = 3x + 2 and q(x) = 2x + 4
p = [3 2];
q = [2 4];
prod = conv(p,q)


%IF USE FIND PARTIAL FRACTION we use function residue(p,q)
% this gives three answers one in r, other in p and other in k
%so syntax is [r, p, k] = residue(p,q)
% here r is called as partial fraction coefficients
% p is the roots of q also called as poles
% k is gain or stand-alone term
%EXAMPLE: p(x) = 9x^3 + 8x^2 + 7x + 6
% q(x) = 5x^3 + 4x^2 + 3x + 2
p = [9 8 7 6];
q = [5 4 3 2];
[r,p,k] = residue(p,q)


%SUPPOSE YOU USE SYMBOLIC FUNCTION to solve equation
%example x^2 = 9 find the value of x or
    y1 = sym('x^2-9');
    x=solve(y1)
    
        
    %SUPPOSE YOU USE SYMBOLIC FUNCTION to solve equation
%example:   x - 0.5*y + 1.5*z = 5
    %       6*x + 4*y - 2*z = 10
    %       x - y + z = -1, so how find x,y and z values
    y2 = sym('x-0.5*y+1.5*z-5');
    y3 = sym('6*x+4*y-2*z-10');
    y4 = sym('-x-y+z+1');
    x=solve(y1)
    
    [x,y,z]=solve(y2,y3,y4)
 