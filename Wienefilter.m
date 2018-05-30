%CALCULATE THE MEAN SQUARE ERROR BETWEEN TWO IMAGES
ref = imread('C:\Users\Stylish Computer\Desktop\wiener filter\maya.jpg');
psf = fspecial('disk', 10); % fspecial is a type of filter or kernel
A = deconvwnr(ref, psf,0.5); % wiener filter
figure, imshow(ref); title('Original LR Resolution ');
figure, imshow(A); title('High Resolution Image');
error = immse(A, ref) % To check result is correct or not we use imm(ref,ref) out put is zero means no changing
