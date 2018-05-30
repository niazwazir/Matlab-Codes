%Resize RGB Image Specifying Size of Output Image
close all
clear all
RGB = imread('peppers.png');
%Resize the image, specifying that the output image have 64 rows. 
%Let imresize calculate the number of columns necessary to 
%preserve the aspect ratio.
RGB2 = imresize(RGB, [64 NaN]);
figure
imshow(RGB)
title('Original Image')
figure
imshow(RGB2)
title('Resized Image')