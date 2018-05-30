% Resize Image Using Nearest Neighbor Interpolation
close all
clear all
%Read image into the workspace
I  = imread('Set5\butterfly_GT.bmp');
%I = imread('rice.png');
figure,imshow(I)
title('Original Image')
%Resize the image, using nearest neighbor interpolation
J = imresize(I, 10,'nearest'); % or put 0.5
figure
imshow(J)
title('Resized By Nearest Image')
K = imresize(I, 10,'bicubic'); % or put 0.5
figure
imshow(K)
title('Resized By Bicubic Image')
L = imadd(J,K);
figure
imshow(L)
title('Resized By Nearset + Bicubic Image')

