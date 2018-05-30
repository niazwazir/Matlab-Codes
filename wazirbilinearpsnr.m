
close all;
clear all;
%% read ground truth image
im  = imread('Set5\butterfly_GT.bmp');
up_scale = 3;
%% work on illuminance only
if size(im,3)>1
    im = rgb2ycbcr(im);
    im = im(:, :, 1);
end
im_gnd = modcrop(im, up_scale);
im_gnd = single(im_gnd)/255;

%% BiLinear Interpolation
im_l1a = imresize(im_gnd, 1/up_scale, 'bilinear');
im_bba = imresize(im_l1a, up_scale, 'bilinear');
%% remove border
im_gnd = shave(uint8(im_gnd * 255), [up_scale, up_scale]);
im_bba = shave(uint8(im_bba * 255), [up_scale, up_scale]);
%% compute PSNR
psnr_bilinear = compute_psnr(im_gnd,im_bba);
%% show results
fprintf('PSNR for Bilinear Interpolation: %f dB\n', psnr_bilinear);
figure, imshow(im); title('Original/PSNR');
figure, imshow(im_bba); title('Bilinear Interpolation');
