addpath('../lib/');

clear all;
close all;

apartado01;

%%%%%%%%%%%%%%
% Parámetros %
%%%%%%%%%%%%%%

Nsplot = 10;

%%%%%%%%%%%%%%
% Resolución %
%%%%%%%%%%%%%%

k = log2(M);
Tb = 1/Rb;
Ts = k * Tb;
Tm = Ts / L;
Xt = 1/sqrt(Tm) * Xn;

t = Tm:Tm:Ts * Nsplot;
figure; plot(t, Xt(1:Nsplot*L));
