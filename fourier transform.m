close all
clear all
I = double(imread('moon.tif'));
imshow(I, []);
F = fft2(I); % our original image is in real but o/p is in complex, use whos command
% so we cna not show complex image we can convert it into a real image, so
% we use matlab function abs taking the absolute value 
whos
figure, imshow((abs(F)), []);
% you observe totally black image, what is the reason, so many reasons
% first one is like the value of DC component is more higher than other
% frequency components so DC swap them out DC Value actually appear in the
% upper left corner of the image, you can drag with mouse zoom out.so we
% want to move that to the middle of the image and we want to enhance the
% low values just for visualization by taking a log function so first we
% use fftshift to moves everything in middle now we use absolute and log to
% enhance the low values
% Now you cna see the DC value in the middle
figure, imshow(log(abs(fftshift(F))), []);
% so we can also see outside values of the middle values, so now middle is
% zero frequency (DC Value) and outer is higher frequencies