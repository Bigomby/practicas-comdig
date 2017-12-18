addpath('../lib/');

clear all;
close all;

L = 8;
Eb = 7/4;
M = 8;

Bn = randi([0 1], 1, 12);
gn = [ 1/4 * ones(1, L/4) -1/4 * ones(1, L/4)  zeros(1, L/2) ]
p = gn;

[Xn, Bn, An, phi, alfabeto] = transmisorpam(Bn, Eb, M, p, L);

stem(Xn);
