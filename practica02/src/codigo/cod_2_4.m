function [fXi, xi] = LCDfdp(X, xpuntos)
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
  [fXi, xi] = hist(X, Npuntos);

  % Se calcula la función aproximada
  fXi = fXi/Np/(xi(2) - xi(1));
end