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

Ns = length(An);
sn = phi * reshape(Xn, L, Ns);
stem(sn(1:Nsplot));
