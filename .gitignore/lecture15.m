%LECTURE NO: 15: THREE DIMENSIONAL PLOTS
% for making three dimensional plots we use function plot3 and use
% the value of x, y and z dimensions
%EXAMPLE PLOT THE FUNCTIONs x(t) = e^-0.2t cos 2t and
% y(t) = e^-0.2t sin2t when zero less than or equal to t and t less than 
% or equal to 10
t = 0:0.1:10;
x = exp(-0.2*t).*cos(2*t);
y=exp(-0.2*t).*sin(2*t);
plot3(x,y,t);
xlabel('bf x'); %bf is the bold face x
ylabel('bf y'); %bf bold face y
zlabel('bf time'); %bf bold face time, you can see graph increases 
%in upward directions


%mesh(x,y,z), the matlab function meshgrid makes it easy to create the 
% x and y array required for these plots
%EXAMPLE: PLOT THE MESH FOR THE FUNCTION
%z(x,y) = e^-0.5[x^2+0.5(x-y)^2]
%for -4 <x<4 it is x range, -4<y<4 it is y range
[x,y] = meshgrid(-4:0.2:4);
z = exp(-0.5*(x.^2+0.5*(x-y).^2));
mesh(x,y,z);
xlabel('\bf x');
ylabel('\bf y');
zlabel('\bf z');


% SURF TO MAKE SURF GRAPH
[x,y,z] = peaks(30);
surfc(x,y,z)
colormap hsv
axis([-3 3 -3 3 -10 5])


%ezplot('fun',[xmin xmax])
%EXAMPLE: PLOT THE FUNCTION
%f(x) = cos(x) for 0<x<pi
ezplot('cos(x)',[0 pi]);