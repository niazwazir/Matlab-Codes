%LECTURE NO: 17: ADDITIONAL PLOTTING FEATURES: 2
%It is also possible to set four additional properties associated with
%each line
%1) lineWidth
%2) MarkerEdgeColor
%3) MarkerFaceColor
%4) MarkerSize
%plot(x,y,'propertyname',value,secondpropertyname,value,...)
%FOR EXAMPLE: 
clc
close all
x = 0:pi/15:4*pi;
y=exp(2*sin(x));
plot(x,y,'K^-','LineWidth',3,'MarkerSize',5,'MarkerEdgeColor','r','MarkerFaceColor','g')

%ENHANCED CONTROL OF TEXT STRINGS
%THE FONT USED TO DISPLAY THE TEXT CAN BE MODIFIED BY STREAM MODIFIERS
%\bf used for BoldFcae, \it for italics, \rm for Restore normal font,
%\fontname{fontname}-Specificy the font name to use,
%\fontsize{fontsize}-Specify font size.
%-{xxx} The characters inside the braces are subscripts.
%^{xxx} The characters inside the braces are superscripts

%Different signs shown in title
x = 0:pi/15:4*pi;
y=exp(2*sin(x));
plot(x,y,'k^-','LineWidth',3,'MarkerSize',5,'MarkerEdgeColor','r',...
    'MarkerFaceColor','g')
%title('Plot of \bf e^{(2*sin(x))}')
title('\fontsize{15}\theta varies from 0\circ to 90\circ')

% different mathematical symbols available like for alph we use \alpha,
% for Beta we use \beta, Gamma \gamma, \delta, \epsilon, \eta, \theta,
%\lamda, \mu, \pi, \phi, \tau etc
