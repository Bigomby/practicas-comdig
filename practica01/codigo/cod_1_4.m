clear all
close all

% Definamos los parámetros de la representación :
T= 4*10^(-3); % Duración
L= 64;

% Número de puntos que vamos a utilizar
Tm = T/L; % Tiempo de muestreo (Intervalo de separación entre muestras)
t = 0:Tm:T-Tm; % Eje de tiempos. Observar el limite superior.

% Definición de la señal
g_t = ones (1, L); % La función evaluada en los puntos elegidos
g_t(L/2+1:end) = -1;

% La representación continua
figure(1)
h = plot(t, g_t);

% Se representa
axis([0 T -1.1 1.1])
set(h, 'linewidth', 1.0); % Permite fijar el grosor de la línea
ylabel('g(t)'),  % Etiqueta para el eje de ordenadas
xlabel('t[ms]'); % Etiqueta para el eje de abscisas