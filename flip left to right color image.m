%flip left to right color image
RGB = imread('peppers.png');
 LR  = RGB(1:end,end:-1:1,:);
 figure, subplot(1,2,1);imshow(RGB);title('original');         
         subplot(1,2,2);imshow(LR);title('Flipped left to right');