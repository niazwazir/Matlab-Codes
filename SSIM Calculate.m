% Calculate Structural Similarity Index (SSIM)
I = imread('pout.tif'); % Load Original Image
H = fspecial('Gaussian',[11 11],1.5); % apply filter and blurred it
B = imfilter(I,H,'replicate'); % Blurred Image

subplot(1,2,1); imshow(I); title('Reference Image');
subplot(1,2,2); imshow(B);   title('Blurred Image');

[ssimval, ssimmap] = ssim(B,I);
  fprintf('The SSIM value is %0.4f.\n',ssimval);