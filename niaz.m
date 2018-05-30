clear all
original_image=imread('C:\Users\Stylish Computer\Desktop\blurred.png');


%% Initialization
s=double(original_image); 
[m n]=size(s);

%downsampling  
 for i=1:m/2
     for j=1:n/2
         y1(i,j)=s(2*i-1,2*j-1);
     end
 end
 
 
 %% Proposed Algorithm
  
output =  (s,y1);
imshow(output)



