%CALCULATE THE MEAN SQUARED ERROR BETWEEN TWO IMAGES
clc
close all;
clear all;
I = imread('C:\Users\Stylish Computer\Desktop\wiener filter\maya.jpg');
ref = rgb2gray(I);
psf = fspecial('disk', 10); % fspecial is a type of filter or kernel
A = deconvwnr(ref, psf,0.5); % wiener filter
figure, imshow(ref); title('Original LR Resolution ');
figure, imshow(A); title('High Resolution Image');
mse = immse(A, ref) % To check result is correct or not we use imm(ref,ref) out put is zero means no changing
%OR THROUGH FORMULA
%mse = imdouble(sum(sum(sqrt(A-ref))))
