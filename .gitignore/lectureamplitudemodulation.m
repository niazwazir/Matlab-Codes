%AMPLITUDE MODULATION
%S(t) Ac[1 + km(t)] cos 2pifct
%k is amplitude sensitivity of AM
%m(t) is the message signal m(t) = Am sin2pifmt
%c(t) is the carrier signal c(t) = Ac cos2pifct
%or S(t) = [1 + km(t)]c(t)
ka = 0.8; % suppose i change 0.2 show amplitude sensitivity or 1 is critical case
Am = 1;
fm = 2;
t = 0:0.001:1;
mt = Am*sin(2*pi*fm*t);
Ac = 2;
fc = 50;
ct = Ac*cos(2*pi*fc*t);
st = (1+ka.*mt).*ct;
subplot(3,1,1)
%% AMPLITUDE MODULATIOn
plot(t,mt)
title('Message Signal m(t)');
xlabel('time t')
ylabel('Amplitude')
subplot(3,1,2)
plot(t,ct)
title('Carrier Signal c(t)');
xlabel('time t')
ylabel('Amplitude')
subplot(3,1,3)
plot(t,st)
title('Modulated Signal S(t)');
xlabel('time t')
ylabel('Amplitude')

% ALSO USED MATLAB BUILT In UNCTION ammod(X, Fc, Fs)