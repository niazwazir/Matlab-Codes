bw = zeros(200,200);
bw(50,50) = 1;
bw(50,150) = 1;
bw(150,100) = 1;

D1 = bwdist(bw,'euclidean');
D2 = bwdist(bw,'cityblock');
D3 = bwdist(bw,'chessboard');
D4 = bwdist(bw,'quasi-euclidean');

figure
subplot(2,2,1);
subimage(mat2gray(D1));hold on imcontour(D1);title('Euclidean');
subplot(2,2,2);
subimage(mat2gray(D2));hold on imcontour(D2);title('City Block');
subplot(2,2,3);
subimage(mat2gray(D3));hold on imcontour(D1);title('Chessboard');
subplot(2,2,4);
subimage(mat2gray(D3));hold on imcontour(D1);title('Chessboard');