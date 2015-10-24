clear all
close all

% Definimos el número de muestras
Np = 1e3;

% Definimos la variable aleatoria del enunciado
N = sqrt(0.1) * randn(1,Np);

% Generamos una señal discreta usando randi() y sign()
A = sign(rand(1,Np) - 0.75);

% Apartado (a)
X1 = N + 1;

% Apartado (b)
X2 = N - 1;

% Apartado (c)
X = N + A;

subplot(1,3,1); hist(X1, 100);
subplot(1,3,2); hist(X2, 100);
subplot(1,3,3); hist(X, 100);
