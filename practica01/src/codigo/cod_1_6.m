clear all
close all

% Definamos los parámetros de la representación :
T = 4*10^(-3); % Duración de la representación
L = 64;

% Número de puntos que vamos a utilizar en la representación
Tm=T/L;

% Tiempo de muestreo ( Intervalo de separación entre muestras)
t = 0:Tm:T-Tm; % Eje de tiempos . Observar el limite superior

% Definicion de la señal continua
g_t = ones(1, L) ; % La función evaluada en los puntos elegidos
g_t(L/2+1:end) = -1;

% La secuencia discreta normalizada
g2_n = sqrt(Tm)*g_t;

% Su representación
h = stem(g2_n);
axis([-1 L+1 -sqrt(Tm)*1.1 sqrt(Tm)*1.1])
set(h, 'linewidth', 1.0);
ylabel('g_2(n)'),
xlabel('n');