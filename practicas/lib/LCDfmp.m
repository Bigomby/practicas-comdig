%% LCDfdp: Calcula la fdp de una Waa de forma empírica
function [f,Xn] = LCDfmp(X)
  Np = length(X);

  valores = unique(X);

  [fx, Xn] = histc(X, valores);

  f = fx/Np;
end
