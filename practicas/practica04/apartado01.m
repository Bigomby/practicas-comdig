addpath('../lib/');

clear all;
close all;

L = 4;       % Número de muestras
M = 4;       % Número de símbolos
K = log2(M); % Número de bits por símbolo

Bn = [1 0 0 1 1 0 1 1 1 0 0]; % Secuencia a transmitir
gt = ones(1, 4);              % Pulso conformador (discreto)
p = gt;                       % Parámetro "p" para una señal paso de baja

% Calcular la energía promedio de bits
Es = 5;      % Energía de símbolo
Eb = Es/K;   % Energía de bit

% Se usa la función para calcular Xn
[Xn, Bn, An, phi, alfabeto] = transmisorpam(Bn, Eb, M, p, L);
stem(Xn);

% Genero el pulso base
% s = [ones(1,L/4), -ones(1, L/4 * 3)];

% Calculo la señal PAM
% [Xn, Bn, phi, alfabeto, An] = transmisorpam(Bn, Eb, M, s, L);

% Dibujo el alfabeto y los símbolos transmitidos y compruebo que coincidan
% hold on
% plot(alfabeto, 0,'r');
% plot(An, 0,'o');
