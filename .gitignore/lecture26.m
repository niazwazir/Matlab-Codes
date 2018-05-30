%THE switch construct
%EXAMPLE: Write a program in matlab to determine whether an integer between
%1 and 10 is even or odd, using switch construct, if not in range than exit.
value =input('Enter the input value  ');
switch(value)
    case{1,3,5,7,9}
        disp('The value is ODD  ');  % also use fprintf
    case{2,4,6,8,10}
        fprintf('The value is EVEN');
    otherwise
        disp('The value is out of range');
end