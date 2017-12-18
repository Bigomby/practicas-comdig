addpath('../lib/');

clear all;
close all;

apartado01;

%%%%%%%%%%%%%%
% Resolución %
%%%%%%%%%%%%%%

SNR = 16;
EbNo = 10^(SNR/10);
vza = 1/EbNo * Eb/2

% Demodulación mediante filtro adaptado
Ns = length(An);
hr = fliplr(phi);
y = conv(Xn, hr);
sn = y(L:L:L*Ns);

v = unique(sn);
fronteras = v(2:end) - (abs(v(2)-v(1)))/2;

hold on;
plot(v, zeros(size(v)), 'bo');
plot(fronteras, zeros(size(fronteras)), 'rx');
hold off;
