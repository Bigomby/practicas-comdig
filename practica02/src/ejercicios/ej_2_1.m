%% LCDfmp: Calcula la función masa de probabilidad
function [px, xi] = LCDfmp(X)
  xi = unique(X);
  px = histc (X,xi )/length(X);
end