%TRANSFER FUNCTION RESPONSE
%EXAMPLE H(S) = S^2/(S^2 -2S -3)
p=[1 0 0];
q=[1 -2 -3];
w = [0:1:10];   % range value of omega means different frequencies transfer function we can draw
hs = freqs(p,q,w);  % frequency response we pass three parameters p,q,and w
plot(w,hs)   % it shows the response of high pass filter pass high frequencies


%BODE PLOT MEANS WE PLOT THE MAGNITUDE AND PHASE OF TRANSFER FUNCTION THAT
%IS BODE PLOT
% syntax [mag, phase] = bode(p,q,w)
%EXAMPLE DRAW THE BODE PLOT OF TRANSFER FUNCTION H(s) = s/(s^2 + 2s +1)
%plot bode plot of H(s) over the range 0<w<10
w = [0:0.1:10];  % w omega range
num = [1 0];
den = [1 2 1];
[mag,phase] = bode(num,den,w);
subplot(2,1,1)  % means two rows one column
plot(w,mag);  % on x axis is w and y axis is mag
xlabel('w');
ylabel('magnitude')
title('Bode plots for HS');
grid on
subplot(2,1,2)  % means two rows one column
plot(w,phase);  % on x axis is w and y axis is mag
xlabel('w');
ylabel('phase')
grid on



