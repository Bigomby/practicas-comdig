function [Bn] = simbolobit(An, alfabeto)

% An       = secuencia de s?mbolos pertenecientes al alfabeto
% alfabeto = tabla con los s?mbolos utilizados en la transmisi?n 
% Bn       = una secuencia de bit, considerando que los s?mbolos se hab?an
% generados siguiendo una codificaci?n de Gray.

% ?cu?ntos bits hay en cada s?mbolo?
k=log2(length(alfabeto));

if k>1
    distancia = abs(alfabeto(1)-alfabeto(2));
    indices   = round((An-alfabeto(1))/distancia);
    Bn        = reshape(de2gray(indices,k)',1,k*length(An));
else
    Bn=((An/max(alfabeto))+1)/2;
end