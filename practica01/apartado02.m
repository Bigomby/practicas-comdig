clear all
close all

% Duración
Tb = 10 ^ (-3);

% Número de muestras
L = 8;

% Tiempo de muestreo
Tm = Tb / L;

% Eje de tiempos
t = 0: Tm: Tb - Tm;
n = 1: L;

% Energía
E = 1;

% Señal discreta
sn=ones(1, L);
sn=sqrt(E/L).*sn;

% Definición de la señal
st = (1 / sqrt(Tm)).*sn;

% Plot digital
subplot(2,1,1);stem(n,sn); grid; ylabel('S(n) (Discreto)'); xlabel('t (n)');

% Plot analógica
subplot(2,1,2); plot(t, st); grid; ylabel('S(t) (Continuo)'); xlabel('t (s)');
