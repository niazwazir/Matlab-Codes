%LECTURE NO: 14: ADDITIONAL TWO DIMENSIONAL PLOTS
% Logarithmic Scales
% There are four possible combinations of linear and logarithmic scales.
% 1) The plot function plots x and y data on linear axis
% 2) semilog function plots x data on logarthmic axes and y data on linear
% axes
%semilogy function plots y data on logarthmic axes and x data on linear
%axes
%loglog function plots x and y data on logarthmic axes


%PLOT USING SEMILOG FUNCTION
clear;
clc;
close all 

% define your linear data
x = 0 : 1000;
% define your logarithmic function
y = log(x);

% plot your log function on linear data
semilogx(x, y)

% define values of axes and grid
axis([1 1000 0 7])
grid 
% add relevant info 
title('Example of Semilogx')
xlabel('x')
ylabel('y = log(x)')


%PLOT USNG loglog function
clear; clc; close all 

% Define your independent variable
t = 0 : 2*pi/360 : 2*pi; 

% Define values along your x-axis
x = exp(t);
% Define values along your y-axis
y = 50 + exp(3*t); 

% Plot your function with a wider line and grid the figure
loglog(x, y, 'LineWidth', 2)
grid 

% Use a title for the figure
title('Demonstration of logarithmic plots') 

% Label your x-axis with a double line.
% Note the special characters
xlabel([{'e^{t}'}; {'0 \leq t \leq 2\pi'}]) 

% Label your y-axis
ylabel('50 + e^{3t}')

%3.- Create a plot with a logarithmic scale for the y-axis and a linear scale for the x-axis (semilogy):
clear; clc; close all 

% now your data along the x-axis is linear
x = 0 : 0.5 : 10;

% your function is now exponential
y = exp(x);

% see the plot
semilogy(x, y)
plot

% add info
title('Example of Semilogy')
xlabel('x')
legend('y = e^x')

%BODE 
w = [0.1: 0.1: 10000];

bode(num,den,w)

grid on

%Step
num=[0 1];
den=[10^-4 0.02 1];
step(num,den)

%ADDITIONAL TWO DIMENSIONAL PLOTS
%Matlab supports more than 20 types of two dimensional plots
%e.g Stem plot, stair plot, bar plot, pie plot ect.
%bar(x,y) to create bar plot


x=0:1:10;
y=2*x;
bar(x,y)
bar(x,y)
plot(x,y)
stem(x,y)
stairs(x,y)
barh(x,y)   % create horizontal bar plot
pie(x)     % create pie chart
polar(x,y)  % polar(theta, r) is used to create polar plot

% ALSO DRAW In THIS WAY
x=[1 2 3 4 5 6];
y=[2 6 8 7 8 5];
stem(x,y)


x=[1 2 3 4 5 6];
y=[2 6 8 7 8 5];
stairs(x,y)

x = [1 2 3 4 5 6];
y=[2 6 8 7 8 5];
bar(x,y)


x = [1 2 3 4 5 6];
y=[2 6 8 7 8 5];
barh(x,y)

x = [1 2 3 4 5 6];
pie(x)      % graph shows six types of data because values in x is 6


theta = [pi/4 pi/2 pi];     %for polar graph we take three values of theta
r = [1 2 3]             % radius is 1, 2, 3
polar(theta,r)      % in graph when radius is 1 than angle is pi/4 or 
% 45 degress, when radius or second circle is 2 than angle is pi/2 or 90
% degree and when radius is 3 than angle is pi or 180

