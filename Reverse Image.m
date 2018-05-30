%Image Reverse
I = imread('C:\Users\Stylish Computer\Desktop\My Matlab Programs\mirror.png'); % Read Original Image
I_mirror = flipdim(I,2); % Mirror Image
I_reverse = flipdim(I,1); % Mirror Image
I_mirrev = flipdim(I_reverse,2); % Mirror Image

figure,
subplot(2,2,1),imshow(I);title('Original Image');

subplot(2,2,2),imshow(I);title('Mirror Image Image');
subplot(2,2,3),imshow(I);title('Reverse Image');

subplot(2,2,4),imshow(I);title('Reverse + Mirror Image');