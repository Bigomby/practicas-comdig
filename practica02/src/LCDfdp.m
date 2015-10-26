%% LCDfdp: Calcula la fdp de una Waa de forma empírica
function [fxi,ci] = LCDfdp(x)

  % Calculamos el histograma con 100 muestras
  [hi, ci]=hist(x, 100);

  % Longitud de x
  Np = length(x);

  % Calculamos la función densidad de probabilidad
  fxi = hi/Np/(ci(2) - ci(1));
end