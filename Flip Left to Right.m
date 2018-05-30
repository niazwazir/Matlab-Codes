%Flip Image from Left to Right 
A = imread('cameraman.tif');
 LR = A(1:end,end:-1:1);
 figure, subplot(1,2,1);imshow(A);title('original');         
         subplot(1,2,2);imshow(LR);title('Flipped left to right');