clear all
close all

% Número de muestras
Np = 1e7;

% Generamos la gaussiana
Xg = randn(1, Np);

% Definimos la nueva variable aleatoria basada en la gaussiana
Y = 3*Xg - 2;

% Podríamos haber utilizado la función mean
my = sum(Y)/Np;

% Podríamos haber utilizado la función var
vary = sum((Y - my).^2)/Np;

% Calculamos la función densidad de probabilidad de Xg
[fX,x] = LCDfdp(Xg);

% Dibujamos la fdp
plot (x, fX, 'b')
hold on

% Calculamos la fdp de la nueva función
[fY, y] = LCDfdp(Y);

% Dibujamos la fdp de la nueva función
plot (y, fY, '+k')

% Opciones de la gráfica
grid on
axis([-12 10 0 0.45])

% Calculamos de forma terórica la fdp de la nueva función y la dibujamos
y1 = -12:0.2:12;
fy1 = (1/sqrt (2*pi*vary))*exp(-(y1-my).^2/(2*vary));
plot(y1, fy1, 'r')