addpath('../lib/');

clear all;
close all;

Rb = 1e3;
Eb = 4;
L = 64;
M = 4;
K = log2(M);

Bn = [0 0 0 1 1 0 1 1];

M1 = 2;
M2 = 2;

n = 1:1:L;
gn = ones(1, L);
p1 = gn .* cos(wc * n);
p2 = gn .* sin(wc * n);

[Xn, BnI, BnQ, AnI, AnQ, alfabetoI, alfabetoQ, phi1, phi2] = ...
  transmisorqam(Bn, Eb, M1, M2, p1, p2, L);

% alfabeto = [];
% for k = 1:M1
%   alfabeto = [alfabeto alfabetoI(k) + j * alfabetoQ];
% end

Nb = length(BnI) + length(BnQ);
Tb = 1 / Rb;
Ts = Tb * K;
Tm = Ts / L;
Ns = Nb / K;
Td = Tm * L * Ns;
Xt = Xn / sqrt(Tm);
t = Tm:Tm:Td;

plot(t, Xt);
