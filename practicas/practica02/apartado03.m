clear all
close all

% Definimos el número de muestras
Np = 1e6;

% Definimos la variable aleatoria del enunciado
N = sqrt(0.1) * randn(1, Np);

% Generamos una señal discreta usando randi() y sign()
A = sign(rand(1,Np) - 0.75);

% Apartado (a)
X1 = N + 1;

% Apartado (b)
X2 = N - 1;

% Apartado (c)
X = N + A;

[fYi1, yi1] = LCDfdp(X1);
[fYi2, yi2] = LCDfdp(X2);
[fYi, yi] = LCDfdp(X);


% subplot(3,1,1); plot (yi1, fYi1, 'b'); axis([-2 2]);
% subplot(3,1,2); plot (yi2, fYi2, 'b'); axis([-2 2]);
% subplot(3,1,3); plot (yi, fYi, 'b'); axis([-2 2]);

% Forma teórica

Xnt = LCDNormal(yi1,0,1);
plot(yi1, Xnt);
