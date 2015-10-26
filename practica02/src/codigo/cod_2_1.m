close all
clear all

% Número de muestras
Np = 1e6;

% Se genera la V.A
X = randi(6,1, Np);

% Calculamos su función masa de probabilidad
xi = unique(X);
y = histc(X,xi)/Np;

% Dibujamos su función masa de probabilidad
stem(xi, y);
axis([xi(1) - 1, xi(end) + 1, 0, max(y) + 0.05])