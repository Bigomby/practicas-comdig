addpath('../lib/');

clear all;
close all;

apartado01;

%%%%%%%%%%%%%%
% Parámetros %
%%%%%%%%%%%%%%

SNRsDB = 0:20;

%%%%%%%%%%%%%%
% Resolución %
%%%%%%%%%%%%%%

EXn = Xn * Xn';
Ebav = EXn / Nb;

k = log2(M);
EXn = Xn * Xn';
Ebav = EXn / Nb;
Pb = [];

for SNR =  10.^(SNRsDB/10)
  No = Eb / SNR;
  Pm = 2 * (M - 1) / M * Qfunct(sqrt((6 * k * M * Ebav) / ((M^2 - 1) * No)));
  Pb = [Pb Pm/k];
end

semilogy(SNRsDB, Pb);
