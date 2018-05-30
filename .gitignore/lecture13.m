%LECTURE NO: 13: MULTIPLE PLOTS IN MATLAB
% MULTIPLE PLOTS MEANS ON SINGLE GRAPH YOU CAN DRAW MORE THAN ONE GRAPH

% PROBLEM: Plot the functions f(x) = sin2x and its derivative
% d/dx sin2x on same graph, so first calculate the derivative and than
% put in the matlab command, so derivative of sin2x is = 2 cos 2x
clc
clear
close all
x = 0:pi/100:2*pi; % pi/100 means given angle in radians
y1 = sin(2*x); % here not use period because 2 is scalar quantity
y2 = 2*cos(2*x);
plot(x, y1);
hold on
plot(x,y2);

% HERE ALSO USE ONE PLOT COMMAND
clc
clear
close all
x = 0:pi/100:2*pi; % pi/100 means given angle in radians
y1 = sin(2*x); % here not use period because 2 is scalar quantity
y2 = 2*cos(2*x);
plot(x, y1,x,y2);

% HERE DIFFERENT COLORS , TYPE OF MARKER AND LINE STYLE
% 'r' is show type of color
% + is shows the Type of Marker
% - is shows the Type of Line
clc
clear
close all
x = 0:pi/100:2*pi; % pi/100 means given angle in radians
y1 = sin(2*x); % here not use period because 2 is scalar quantity
y2 = 2*cos(2*x);
plot(x, y1,x,y2,'r+-');

% HERE DIFFERENT PLOT COLORS, MARKER STYLE AND LINE STYLES
%COLOR (y,m,c,r,g,b,w,k) yellow, magenta, cyan, green, blue, white, black
%MARKER STYLE (.(point), 0(circle), x(x-mark),+, *, s(square), 
%d(diamond),triangle down, ^(traingle up)<(traingle left),
%>(traingle right), p(pentagram), h (hexagram)            
%LINE STYLE -(solid), :(dotted), -.(dash-dot), --(dashed)
clc
clear
close all
x = 0:pi/100:2*pi; % pi/100 means given angle in radians
y1 = sin(2*x); % here not use period because 2 is scalar quantity
y2 = 2*cos(2*x);
plot(x, y1,'r+-',x,y2,'y*--');

%NOW USE LEGEND WHICH GRAPH IS SIGN GRAPH AND WHICH IS COSINE GRAPH
clc
clear
close all
x = 0:pi/100:2*pi; % pi/100 means given angle in radians
y1 = sin(2*x); % here not use period because 2 is scalar quantity
y2 = 2*cos(2*x);
plot(x, y1,'r+-',x,y2,'y*--');
legend('sine','cosine');

%CHANGE THE POSITION OF LEGEND EITHER ON 1, 2, 3 , 4 only four corner
%positions
clc
clear
close all
x = 0:pi/100:2*pi; % pi/100 means given angle in radians
y1 = sin(2*x); % here not use period because 2 is scalar quantity
y2 = 2*cos(2*x);
plot(x, y1,'r+-',x,y2,'y*--');
h = legend('Sine','Cosine', 3);


