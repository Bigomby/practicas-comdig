addpath('../lib/');

M = 8;
Eb = 8;
L = 32;
Rb = 1e4;
Nb = 1e6;
wc = 8 * pi / L;

Bn = randi([0 1], 1, Nb);

n = 1:1:L;
s = sin((2 * pi)/(2 * L) * n) .* cos(wc * n);
[Xn, Bn, phi, alfabetopam, An] = transmisorpam(Bn, Eb, M, s, L);
