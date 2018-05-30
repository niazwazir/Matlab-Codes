% LECTURE 33 TO CREATE SUBFUNCTIONS In FUNCTION

function [ A,M,D] = arith(a,b)
A = add(a,b);
M = mul(a,b);
D = div(a,b);
end
function c = add(a,b)
c = a+b;
end
function d = mul(a,b)
d = a*b;
end
function e = div(a,b)
e = a/b;
end

