
clc;
close all;
y = imread('C:\Users\Stylish Computer\Desktop\khan1.png');
y = im2double(y);
figure, imshow(y);
%0.005
psf = fspecial('disk', 15);
x = deconvwnr(y, psf,0.05); % wiener filter
figure, imshow(x)
