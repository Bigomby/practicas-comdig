%% LCDfdp: Calcula la fdp de una Waa de forma empírica
function [f] = LCDNormal(X, m, v)
  f = 1/sqrt(2*pi*v) * exp(-((X-m).^2) / (2*v));
end
