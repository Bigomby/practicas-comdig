clear all
close all

% Primero obtenemos An como en el apartado 1
N = 10;
An = 4 * randi([0,1], 1, N) - 2;

% Ahora obtenemos la secuencia del apartado 2
Tb = 1e-3;
L = 8;
Tm = Tb / L;
E = 1;
sn = ones(1, L);
sn = sqrt(E/L) * sn;

% Preparamos la nueva secuencia
Tb_Xn = Tb * length(An) % Se muestra explícitamente
L_Xn = L * length(An);
Tm_Xn = Tb_Xn / L_Xn;

% Usamos kron para realizar la operación que se pide
Xn = kron(An, sn);
subplot(2,1,1); h = stem(Xn); grid;
set(h, 'linewidth', 2.0);

X_max = max(Xn) % Se muestra explícitamente
X_max = min(Xn) % Se muestra explícitamente

% Obtenemos la señal simulada
t = 0 : Tm_Xn : Tb_Xn - Tm;
Xt = (1/sqrt(Tm)) * Xn;

% Dibujamos la señal
subplot(2,1,2); s = plot(t, Xt); grid;
set(s, 'linewidth', 2.0);