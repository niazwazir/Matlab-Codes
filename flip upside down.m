%To flip an image upside down without using ‘flipud’ 
A = imread('liftingbody.png');
 UD = A(end:-1:1,1:end);
 figure, subplot(1,2,1);imshow(A);title('original');         
         subplot(1,2,2);imshow(UD);title('Upside Down');