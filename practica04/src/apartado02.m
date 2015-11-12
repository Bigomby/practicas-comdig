clear all
close all

% Transmitimos la señal del apartado 1
apartado01;

SNRdb1 = 0;
SNRdb2 = 7;
SNR1 = 10^(SNRdb1/10);
SNR2 = 10^(SNRdb2/10);

hr = fliplr(phi);
yn = conv(Xn, hr);
sn = yn(L:L:end);

varzn1 = Eb/(2*SNR1);
varzn2 = Eb/(2*SNR2);
zn1 = sqrt(varzn1)*randn(size(sn));
zn2 = sqrt(varzn2)*randn(size(sn));

% Señal de entrada al detector
rn1 = sn + zn1;
rn2 = sn + zn2;
% plot(rn, 0,'g^');

[c1, fx1] = LCDfdp(rn1);
[c2, fx2] = LCDfdp(rn2);
subplot(1,2,1); plot(fx1, c1);
subplot(1,2,2); plot(fx2, c2);
