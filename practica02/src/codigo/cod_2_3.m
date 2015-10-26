clear all
close all

% Número de muestras
Np = 1e6;

% Número de intervalos en los que se dividirá el histograma
Nbins = 20;

% Se generan Np posibles valores para una variable aleatoria uniformemente
% distribuida entre 0 y 1
Xu = rand(1, Np);

% Se representa en el eje de abscisa un subconjunto, los 100 primeros, de
% estos valores, asignándole ordenadas (alturas) cero. Para que no se unan los
% puntos, se indica que utilice el símbolo '.' en cada punto. Añadiendo la
% 'r', los representa en rojo.
plot(Xu(1:100), zeros(1,100), '.r')

% Se fijan los límites de representación
axis([-0.5, 1.5 -0.2 1.2])
hold on
plot([-0.5 1.5], [0 0])

% Calcula el histograma : Nbins es el número de intervalos. La función devuelve
% en x la coordenada central del intervalo y en fx el número de veces que la
% variable aleatoria ha tomado valores dentro de cada intervalo.

% Calcula el histograma.
[fx, x] = hist(Xu, Nbins);
fx = fx/Np/(x(2)-x(1));

% El número de veces en cada intervalo divido por el número total de
% valores generados de la variable aleatoria es la frecuencia relativa de
% cada intervalo . Para obtener la estimación de la función de densidad
% de probabilidad hay que dividir por el ancho del intervalo.

% Se representa fx mediante un diagrama de barras .
bar(x, fx , 'FaceColor' ,[0.8 0.8 1])

% % Se representa la estimación de la función densidad de probabilidad
plot ([0, x, 1], [0, fx, 0], 'b', 'LineWidth', 2)
hold off