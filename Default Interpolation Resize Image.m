% Resize Image Specifying Scale Factor
close all
clear all
%Read image into the workspace
I = imread('rice.png');
figure,imshow(I)
title('Original Image')
%Resize the image, specifying scale factor and using default interpolation
%method and antialiasing.
J = imresize(I, 10); % or put 0.5
figure
imshow(J)
title('Resized Image')

