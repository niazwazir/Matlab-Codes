function PSNR = MyPsnr(distImg, origImg)
I = imread('C:\Users\Stylish Computer\Desktop\wiener filter\maya.jpg');
origImg = rgb2gray(I);
        origImg = double(origImg);
        psf = fspecial('disk', 10); % fspecial is a type of filter or kernel
distImg = deconvwnr(origImg, psf,0.5); % wiener filter
        distImg = double(distImg);

        [M N P] = size(origImg);
        error = origImg - distImg;
        MSE = sum(sum(sum(error.^2))) / (M * N * P);

        if(MSE > 0)
            PSNR = 20*log10(max(max(max(origImg))))-10*log10(MSE);
        else
            PSNR = 99;
        end    