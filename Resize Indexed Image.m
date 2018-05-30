%Resize Indexed Image
%Resize the image, specifying a scale factor. By default, imresize
%returns an optimized color map with the resized indexed image.
close all
clear all

[X, map] = imread('trees.tif');

[Y, newmap] = imresize(X, map, 0.5);

figure
imshow(X,map)
title('Original Image')

figure
imshow(Y,newmap)
title('Resized Image')