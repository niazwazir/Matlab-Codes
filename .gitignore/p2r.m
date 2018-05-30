function [x,y] = p2r(r, theta )
%convert from polar to rectangular conversion
x=r*cos(theta*pi/180);
y=r*sin(theta*pi/180);

end

