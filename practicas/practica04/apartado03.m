clear all;
close all;

M = 8;
Nb = 1e4;
Rb = 1e4;
Eb = 8;
L = 16;

K = log2(M);
wc = (8 * pi) / L;

% 3) Pulso conformador paso de banda
periodo = 2 * L;
w0 = (2 * pi) / periodo;
n = 1:1:L;
g = sin(w0 * n);

% 4) Base del sistema
Bn = randi([0 1], 1, Nb);
p = g .* cos(wc * n);
[Xn, Bn, An, phi, alfabeto] = transmisorpam(Bn, Eb, M, p, L);
Ephi = phi * phi'
assert(Ephi, 1, 1e6)

% 5) Tiempo de separación entre muestras
Tb = 1 / Rb;
Ts = Tb * K;
Tm = Ts / L;

% Calcular phi en continuo
phit = phi / sqrt(Tm);
Ephit = Tm * (phit * phit');
t = Tm:Tm:L*Tm;
plot(t, phit);

% 6) Duración de la señal transmitida
Ns = Nb / K;
D = L * Tm * Ns;

% 7) Obtener una representación de la señal transmitida (4 primeros símbolos)
stem(Xn(1:4*L));

% Extra) Señal transmitida en continuo
Xt = Xn / sqrt(Tm);
t = Tm:Tm:L*Tm*4;
plot(t, Xt(1:4*L));
