%LECTURE NO: 19: POLE ZERO PLOT
% TRANSFER FUNCTION YOU GIVEN AND FIND POLE AND ZEROS
% H(s) = (S+2)/(S^2 + 4s + 5)
num=[1 2];
den=[1 4 5];
H = tf(num, den) % supose you want to read transfer function tf means create 
%transfer function

% NOw plot pole zero map we use pzmap(H)
num=[1 2];
den=[1 4 5];
H = tf(num, den)
pzmap(H)
grid on


%Ho to find the pole zero values
num=[1 2];
den=[1 4 5];
[z,p] = tf2zp(num,den)  % they give zero is -2 and poles is -2+1i, -2 -1i