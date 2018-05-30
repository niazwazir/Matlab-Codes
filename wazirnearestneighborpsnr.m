
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

%% Nearest interpolation
im_l1 = imresize(im_gnd, 1/up_scale, 'nearest');
im_bb = imresize(im_l1, up_scale, 'nearest');
%% remove border
im_gnd = shave(uint8(im_gnd * 255), [up_scale, up_scale]);
im_bb = shave(uint8(im_bb * 255), [up_scale, up_scale]);
%% compute PSNR
psnr_near = compute_psnr(im_gnd,im_bb);
%% show results
fprintf('PSNR for Nearest Neighbor Interpolation: %f dB\n', psnr_near);
figure, imshow(im); title('Original/PSNR');
figure, imshow(im_bb); title('Nearest Neighbor Interpolation');
