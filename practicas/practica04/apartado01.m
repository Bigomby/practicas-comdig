clear all
close all

M = 4;
Eb = 4;
Nb = 100000;
L = 4;

% Calculamos K, el número de bits por símbolo
K = log2(M);

% Genero los bits a enviar
Bn = randi([0 1], 1, Nb);

% Genero el pulso base
s = [ones(1,L/4), -ones(1, L/4 * 3)];

% Calculo la señal PAM
[Xn, Bn, phi, alfabeto, An] = transmisorpam(Bn, Eb, M, s, L);

% Dibujo el alfabeto y los símbolos transmitidos y compruebo que coincidan
% hold on
% plot(alfabeto, 0,'r');
% plot(An, 0,'o');