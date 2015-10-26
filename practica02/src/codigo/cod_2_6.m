clear all
close all

% Número de muestras
Np = 1e6;

% Generar una variable aleatoria X gaussiana N con media 0 y varianza 1.
% Encontrar su función densidad de probabilidad muestral .
X = randn(1, Np);

% Se calcula su fdp
[fXi, xi] = LCDfdp(X, 1024);

% Definir la variable aleatoria Y=g(X), con una función g(x) y encontrar
% sus muestras y su función densidad de probabilidad muestral .
Y=3*(X-1).^2+4;

% se calcula su fdp
[fYi, yi] = LCDfdp(Y, 1024);

% Encontrar el valor esperado de acuerdo con las dos expresiones
% y comprobar que coinciden.

% Cálculo del valor esperado de Y mediante el teorema
my1 = (xi(2) - xi(1)) * (3*(xi-1).^2+4) * fXi'

% Cálculo directo del valor esperado de Y
my2 = (yi(2) - yi(1)) * yi * fYi'