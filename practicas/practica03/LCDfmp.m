%% LCDfdp: Calcula la fdp de una Waa de forma empírica
function [f,Xn] = LCDfmp(X, argvalores)
  Np = length(X);

  valores = unique(X);
  if nargin > 1
    valores = argvalores;
  end

  [fx, Xn] = histc(X, valores);

  f = fx/Np;
end
