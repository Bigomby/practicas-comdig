close all
clear all

% Número de muestras
Np = 1e6;

% Se genera la V.A
X = randi (16,1, Np);

% Se definen probabilidades explícitamente para diferentes valores
X(find(X==7)) = 3;
X(find(X==8 | X==9 | X==10)) = 4;
X(find(X==11 | X==12 | X==13)) = 5;
X(find(X==14 | X==15 | X==16)) = 6;

% Calculamos su función masa de probabilidad
[px, xi] = LCDfmp(X);

% Dibujamos su función masa de probabilidad
stem(xi , px)
axis([xi(1) - 1, xi(end) + 1, 0, max(px) + 0.05])