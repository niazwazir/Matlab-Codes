%LECTURE NO 12: INTRODUCTION TO PLOTTING
% IT CAN BE DONE WITH plot function
% FOR PLOTTING AT LEAST TWO VECTORS X AND Y ARE REQUIRED
% EXAMPLE: PLOT THE FUNCTION y = x^2 - 10x + 15
% FOR THE VALUES OF X BETWEEN 0 AND 10
% TO PLOT THIS EQUATION YOU FIRST WRITE
%x = 0:1:10; % 11 points because 0 to 10 , 0 also one point
% OR linspace (0,10,11) here 0 means starting point, 10 means last point
% and 11 means how many points this range can be divided
%y = x^2-10*x+15 
%plot(x,y) % WHEN RUN THIS PROGRAM IT IS SHOW ERROR, BECAUSE THIS x^2
% SHOWS MATRIX OPERATION 10*x also show matrix operation,
% but we perform array operation so we use . point or use period

x = 0:1:10; 
y = x.^2-10.*x+15 % dot or period just convert into array operation
plot(x,y) % now plot run accurately
title('plot of y = x^2 -10*x + 15');
xlabel('x');
ylabel('y');
grid on


%abs(x)is use to calculate magnitude or absolute of x
 x = 3 + 4i % i is predfine in matlab, just type i, it shows
 abs(x)
% sin(x) but sin(x) in radians
% exp(x)
%log(x) or ln(10) calculate the natural log log of base e of x or log 10 use 10
%mod(x,y) if you require a remainder 
mod(5,2) % 5 divided by 2 remainder is 1
%acos(x) to find cos inverse
%ceil(x) is use to round off and add 1
x = 4.123
ceil(x) % ans is 5
round(x) % it shows 4

% PROBLEM PLOT THE FUNCTION y(x) = sin(x), for 0< less than or equal to x
% lessthan or equal to 6 0<x<6
clc
clear
close all
x = 0:1:6;
y = sin(x)
plot(x,y)

%decrease or increase the space points
clc
clear
close all
x = 0:0.1:6;
y = sin(x)
plot(x,y)


% PROBLEM PLOT THE FUNCTION y(x) = 2sin(x)e^-0.2x, for 0< less than or equal to x
% lessthan or equal to 15,  0<x<15
clc
clear
close all
x = 0:0.1:15;
y = (2*sin(x)).*exp(-0.2*x)
plot(x,y)
