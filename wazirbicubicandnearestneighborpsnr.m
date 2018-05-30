
close all;
clear all;
%% read ground truth image
I  = imread('Set5\butterfly_GT.bmp');
psf = fspecial('disk', 1); % fspecial is a type of filter or kernel
im = deconvwnr(I, psf,0.3); % wiener filter
up_scale = 3;
%% work on illuminance only
if size(im,3)>1
    im = rgb2ycbcr(im);
    im = im(:, :, 1);
end
im_gnd = modcrop(im, up_scale);
im_gnd = single(im_gnd)/255;

%% remove border
im_gnd = shave(uint8(im_gnd * 255), [up_scale, up_scale]);
im_b = shave(uint8(im_b * 255), [up_scale, up_scale]);
%% compute PSNR
psnr_bic = compute_psnr(im_gnd,im_b);
%% show results
fprintf('PSNR for Wiener Filter: %f dB\n', psnr_bic);
figure, imshow(im); title('Original/PSNR');
figure, imshow(im_b); title('Wiener Filter');
mse = immse(im_gnd, I)