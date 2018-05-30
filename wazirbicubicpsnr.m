
close all;
clear all;
%% read ground truth image
im  = imread('Set5\butterfly_GT.bmp');
b = rgb2gray(im);
up_scale = 3;
%% work on illuminance only
%if size(im,3)>1
 %   im = rgb2ycbcr(im);
  %  im = im(:, :, 1);
%end
%im_gnd = modcrop(im, up_scale);
%im_gnd = single(im_gnd)/255;

%% bicubic interpolation
im_l = imresize(b, 3, 'bicubic');
%im_b = imresize(im_l, up_scale, 'bicubic');
%% remove border
im_gnd = shave(uint8(im_gnd * 255), [up_scale, up_scale]);
im_b = shave(uint8(im_b * 255), [up_scale, up_scale]);
%% compute PSNR
psnr_bic = compute_psnr(im_1,b);
%% show results
fprintf('PSNR for Bicubic Interpolation: %f dB\n', psnr_bic);
figure, imshow(im); title('Original/PSNR');
figure, imshow(im_b); title('Bicubic Interpolation');
