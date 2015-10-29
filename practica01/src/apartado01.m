clear all;
close all;

% Número de muestras que va a tener la señal
N = 10;

% Señal con valores +/- 2
An = 4 * randi([0,1], 1, N) - 2;

% Mostramos la secuencia
h = stem(An);
set(h, 'linewidth', 2.0);