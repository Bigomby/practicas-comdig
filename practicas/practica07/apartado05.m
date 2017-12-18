addpath('../lib/');

clear all;
close all;

apartado01;

%%%%%%%%%%%%%%
% Resolución %
%%%%%%%%%%%%%%

Ns = length(An);
sn = phi * reshape(Xn, L, Ns);

% Muestra los 10 primeros símbolos
stem(sn(1:10));
