addpath('../lib/');

clear all;
close all;

L = 8;
Eb = 7/4;
M = 8;
Nb = 1e6;

Bn = randi([0 1], 1, Nb);
gn = [ ones(1, L/4) ones(1, L/4)  zeros(1, L/2) ];
p = gn;

[Xn, Bn, An, phi, alfabeto] = transmisorpam(Bn, Eb, M, p, L);

Ns = length(An);
sn = phi * reshape(Xn, L, Ns);
plot(unique(sn), 0, 'o');
