clear all
close all

% Definamos los parámetros de la representación :
T= 4*10^(-3); % Duración
L= 64;

% Definición de la señal de forma discreta
g1_n = ones(1, L);
g1_n(L/2+1:end) = -1;
h = stem(g1_n);
axis([1 L -1.1 1.1]),
set (h, 'linewidth', 1.0);
ylabel('g_1(n)'),
xlabel('n');