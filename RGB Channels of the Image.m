close all
clear all
I = imread('onion.png');
% Red Channel
R = I(:,:,1);
% Green Channel
G = I(:,:,2);
% Blue Channel
B = I(:,:,3);
subplot(2,2,1); imshow(I);title('Original Image');
subplot(2,2,2);imshow(R);title('Red Channel of an Original Image');
subplot(2,2,3);imshow(G);title('Green Channel of an Original Image');
subplot(2,2,4);imshow(B);title('Green Channel of an Original Image');








