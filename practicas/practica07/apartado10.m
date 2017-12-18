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

Ns = length(An);
sn = phi * reshape(Xn, L, Ns);
errorsimulado = [];

for SNR = 10.^(SNRsDB/10)
  stdn = (Eb / SNR)/2;
  rn = sn + randn(size(sn)) * stdn;
  AnDetect = detectaSBF(rn, alfabetopam);
  BnDetect = simbolobit(AnDetect, alfabetopam);
  contenterrb = Nb - sum(BnDetect == Bn);
  errorsimulado = [errorsimulado contenterrb/Nb];
end

semilogy(errorsimulado);
