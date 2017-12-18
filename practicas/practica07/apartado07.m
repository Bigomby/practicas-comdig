addpath('../lib/');

clear all;
close all;

apartado01;

%%%%%%%%%%%%%%
% Resolución %
%%%%%%%%%%%%%%

Ns = length(An);
sn = phi * reshape(Xn, L, Ns);

stem(unique(sn));
