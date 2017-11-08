clear all;
close all;

% Número de muestras que va a tener la señal
N = 10;

% Señal con valores +/- 2 con randi
An1 = 4 * randi([0,1], 1, N) - 2;
An2 = 2 * sign(randn(1, N));
An3 = 2 * sign(rand(1, N) - 0.5);

% Mostramos la secuencia
h = stem(An1);
set(h, 'linewidth', 2.0);
