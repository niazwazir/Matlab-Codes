%HOW TO CREATE A FUNCTION 
%A MATLAB function is a special type of M-file that runs in it owns   
%independent workspace. 
%It receives input data through an input argument list and returns results 
%to the caller through an output argument list.
%TYPES OF FUNCTIONS
%1) User defined Functions 2) Function Functions
%3) Special Type of Functions a)Sub Functions b) Private Functions c)Nested
%Functions
function distance = dist2(x1, y1, x2, y2)
distance = sqrt((x2-x1^2 + (y2-y1)^2);
end