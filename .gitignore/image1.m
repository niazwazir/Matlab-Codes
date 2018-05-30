
clc
close all
clear all
RGB = imread('peppers.png');
imshow(RGB)
I = rgb2gray(RGB);
figure
imshow(I)
