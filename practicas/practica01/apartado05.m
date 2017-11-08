clear all
close all

% Primero obtenemos An como en el apartado 1
N = 10;
An = 4 * randi([0,1], 1, N) - 2;

% Ahora obtenemos la secuencia del apartado 2
Tb = 1e-3;
L = 8;
Tm = Tb / L;
E = 1;

n = 0 : 1 : L/2;

dsin = stem(n, sin(n))


% sn = ones(1, L);
% sn = sqrt(E/L) * sn;
%
% % Preparamos la nueva secuencia y obtenemos la secuencia
% Tb_Xn = Tb * length(An);
% L_Xn = L * length(An);
% Tm_Xn = Tb_Xn / L_Xn;
% Xn = kron(An, sn);
%
% % Calculamos la energía de la secuencia
% E_Xn = Xn*Xn'
% P_Xn = E_Xn / Tb_Xn
