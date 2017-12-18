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

Ns = length(An);
sn = phi * reshape(Xn, L, Ns);
v = unique(round(sn*1e4)/1e4);
fronteras = v(2:end) - (abs(v(2)-v(1)))/2;

hold on;
plot(v, zeros(size(v)), 'bo');
plot(fronteras, zeros(size(fronteras)), 'r*');
hold off;
