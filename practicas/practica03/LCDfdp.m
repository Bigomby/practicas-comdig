%% LCDfdp: Calcula la fdp de una Waa de forma empírica
function [fxi,ci] = LCDfdp(X, xpuntos)
  % Número de muestras
  Np = length(X);

  % Número de puntos por defecto
  Npuntos=128;

  % Si se proporciona un segundo parámetro se usará en lugar de valor por
  % defecto
  if nargin > 1
    Npuntos = xpuntos;
  end

  % Se genera un histograma
  [fxi, ci] = hist(X, Npuntos);

  % Se calcula la función aproximada
  fxi = fxi/Np/(ci(2) - ci(1));
end
