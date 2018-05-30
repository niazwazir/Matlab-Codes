clear all ;
close all;
imdata = imread('C:\Users\Stylish Computer\Desktop\MATLAB CODES ON SUPER RESOLUTION\Niaz Corect Matlab SRCNN\Set5\butterfly_GT.bmp');
figure(1);imshow(imdata);title ('Original Image');
imdata = rgb2gray(imdata);
figure(2); imshow(imdata);title('Gray Image');

%Get Fourier Transform of an image
F = fft2(imdata);
%Fourier Transform of an Image
S = abs(F);
figure(3);imshow(S,[]);title('Fourier Transform of an Image');
%Get the centered spectrum
Fsh = fftshift(F);
figure(4);imshow(abs(Fsh),[]);title('Centered Fourier Tranform of Image')
%Apply Log Transform
s2 = log(1+abs(Fsh));
figure(5);imshow(s2,[]);title('Log transformed Image')

%Reconstruct the Image

F = ifftshift(Fsh);
f = ifft2(F);
g = rgb2gray(f);
figure(6); imshow(g,[]);title('Reconstructed Image')