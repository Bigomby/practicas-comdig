addpath('../lib/');

clear all;
close all;

apartado01;

%%%%%%%%%%%%%%
% Resolución %
%%%%%%%%%%%%%%

% Mediante correlación
Ns = length(An);
sn1 = phi * reshape(Xn, L, Ns);

% Mediante filtro adaptado
hr = fliplr(phi);
y = conv(Xn, hr);
sn2 = y(L:L:L*Ns);

stem(unique(sn2));
