%LECTURE NO 10: DISPLAYING OUTPUT DATA
pi
format long
pi
format short e
pi
format long e
pi
%CHNAGE FORM IN RATIONAL
22/7
format rat
22/7
%fprintf function
fprintf('THE VALUE OF PI IS %f', pi)
THE VALUE OF PI IS 3.141593>> 
%sprintf function
sprintf('THE VALUE OF PI IS %f', pi)
%FIVE VALUES ARE SAME
A = pi*50*ones(1,5)
sprintf('%f\n%.2f\n %+.2f\n %12.2f\n %012.2f\n',A)
ans =

157.079633      %  Display in fixed point notation (%f)
157.08          % Display 2 decimal digits (%.2f)
 +157.08        % Display + for positive numbers (%+.2f)
       157.08   % Set width to 12 characters (%12.2f)
 000000157.08   %Replace leading spaces with 0(%012.2f)