addpath('../lib/');

clear all;
close all;

Rb = 1e3;
Eb = 4;
L = 64;
M = 4;
K = log2(M);

% Secuencia a transmitir
Bn = [0 0 0 1 1 0 1 1];

% Frecuencia de la portadora
wc = (8 * pi) / L;

% Pulso conformador rectangular
gn = ones(1, L);

% Pulsos bases
n = 1:1:L;
p1 = gn .* cos(wc * n);
p2 = gn .* sin(wc * n);

% Se transmite la señal
[Xn, Bn, An, phi1 phi2, alfabeto] = transmisorpsk(Bn, Eb, M, p1, p2, L, pi/4);

Nb = length(An) * K;
Tb = 1 / Rb;
Ts = Tb * K;
Tm = Ts / L;
Ns = Nb / K;
Td = Tm * L * Ns;
Xt = Xn / sqrt(Tm);
t = Tm:Tm:Td;

plot(t, Xt);
