RGB = imread('peppers.png');
UD = RGB(end:-1:1,1:end,:);
 figure, subplot(1,2,1);imshow(RGB);title('original');         
         subplot(1,2,2);imshow(UD);title('Upside Down');