addpath('../lib/');

clear all;
close all;

Rb = 1e4;
Eb = 4;
wc = 8 * pi
L = 64;
M = 4;

% Secuencia a transmitir
Bn = [0 0 0 1 1 0 1 1];

% Frecuencia de la portadora
wc = (8 * pi) / L;

% Pulso conformador senoidal
n = 1:1:L;
gn = sin((2 * pi)/(2 * L) * n);

% Pulsos bases
p1 = gn .* cos(wc * n);
p2 = gn .* sin(wc * n);

% Se transmite la señal
[Xn, Bn, An, phi1 phi2, alfabeto] = transmisorpsk(Bn, Eb, M, p1, p2, L, pi/4);

Nb = length(An) * K
Tb = 1 / Rb;
Ts = Tb * K;
Tm = Ts / L;
Ns = Nb / K;
Td = Tm * L * Ns;
Xt = Xn / sqrt(Tm);
t = Tm:Tm:Td;

plot(t, Xt);
