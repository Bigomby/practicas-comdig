clear all
close all

% Datos
Rb = 1000;
Eb = 4;

% Valor que yo elijo, sólo sirve para MATLAB/Octave. Funciona bien si es
% potencia de dos
L = 4;

% Tamaño de la secuencia
Np = 100;

% Pulsos
s1 = ones(1,L);
s1(3*L/4+1 : end) = 0;
s2 = ones(1,L);
s2(1 : L/4) = 0;

% Secuencia
Bn = randi([0,1],1, Np);

% Llamamos a la función
[Xn, s1, s2] = transmisorbinario(Bn, Rb, Eb, s1, s2, L);

% Representamos la señal transmitida
h = stem(Xn);
set(h, 'linewidth', 2.0);

% Calculamos que la energía port bits sea 4
if  Xn*Xn' / length(Bn) == Eb
  disp(sprintf('Energía transmitida correcta\n'));
else
  disp(sprintf('Error en la energía transmitida\n'));
end

