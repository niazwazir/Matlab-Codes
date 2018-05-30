function [sinh,cosh] = hypersc(x )
%calculate the hyperbolic sine and cosine function
sinh = (exp(x)-exp(-x))/2;
cosh = (exp(x)+exp(-x))/2;

end

