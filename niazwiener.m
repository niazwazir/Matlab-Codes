
close all;
clear all;

%% read ground truth image
im  = imread('Set5\butterfly_GT.bmp');
%psf = fspecial('disk', 15);
%im = deconvwnr(im1, psf,0.05); % wiener filter
%im  = imread('Set14\zebra.bmp');

%% set parameters
up_scale = 3;
model = 'model\9-5-5(ImageNet)\x3.mat';
% up_scale = 3;
% model = 'model\9-3-5(ImageNet)\x3.mat';
% up_scale = 3;
% model = 'model\9-1-5(91 images)\x3.mat';
% up_scale = 2;
% model = 'model\9-5-5(ImageNet)\x2.mat'; 
% up_scale = 4;
% model = 'model\9-5-5(ImageNet)\x4.mat';

%% work on illuminance only
if size(im,3)>1
    im = rgb2ycbcr(im);
    im = im(:, :, 1);
end
im_gnd = modcrop(im, up_scale);
im_gnd = single(im_gnd)/255;

%% bicubic interpolation
im_l = imresize(im_gnd, 1/up_scale, 'bicubic');
im_b = imresize(im_l, up_scale, 'bicubic');

%% SRCNN
im_h = SRCNN(model, im_b);

%% remove border
im_h = shave(uint8(im_h * 255), [up_scale, up_scale]);
im_gnd = shave(uint8(im_gnd * 255), [up_scale, up_scale]);
im_b = shave(uint8(im_b * 255), [up_scale, up_scale]);

%% compute PSNR
psnr_bic = compute_psnr(im_gnd,im_b);
psnr_srcnn = compute_psnr(im_gnd,im_h);


%% compute Structural Similarity Index (SSIM) for measuring
%image quality
[ssimval, ssimmap] = ssim(im_gnd,im_b);
[ssimval1, ssimmap1] = ssim(im_gnd,im_h);



%% show results
fprintf('PSNR for Bicubic Interpolation: %f dB\n', psnr_bic);
fprintf('PSNR for SRCNN Reconstruction: %f dB\n', psnr_srcnn);

% %0.4f.\n is fixed syntax donot change it
fprintf('The SSIM value of Bicubic is %0.4f.\n',ssimval); 
fprintf('The SSIM value of SRCNN is %0.4f.\n',ssimval1);


figure, imshow(im); title('Original/PSNR');
figure, imshow(im_b); title('Bicubic Interpolation');
figure, imshow(im_h); title('SRCNN Reconstruction');

%show the SSIM Index pictured value
figure, imshow(ssimmap,[]);
title(sprintf('ssim Index Map - Mean ssim Value is %0.4f',ssimval));


figure, imshow(ssimmap,[]);
title(sprintf('ssim Index Map - Mean ssim Value is %0.4f',ssimval1));


%imwrite(im_b, ['Bicubic Interpolation' '.bmp']);
%imwrite(im_h, ['SRCNN Reconstruction' '.bmp']);
