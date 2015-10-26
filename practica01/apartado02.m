clear all
close all

% Duración
Tb = 1e-3;

% Número de muestras
L = 8;

% Tiempo de muestreo
Tm = Tb / L;

% Energía
E = 1;

% Señal discreta y normalizada
sn = ones(1, L);
sn = sqrt(E/L) * sn;

% Señal continua
t = 0 : Tm : Tb - Tm;
st = (1/sqrt(Tm)) * sn;

% Añadimos un punto para t=0 y t=Tb en el que la señal valga cero
t = [t(1)-eps t]; st = [0 st];
t = [t t(end)+eps]; st = [st 0];

% Plot digital
subplot(2,1,1); h = stem(sn); grid; xlabel('Secuencia');
set(h, 'linewidth', 2.0);
axis([0 L+1]);

% Plot analógica
subplot(2,1,2); s = plot(t, st); grid; xlabel('Señal');
set(s, 'linewidth', 2.0);
axis([-t(end)*0.1 t(end)*1.1]);

% Comprobamos que ambas señales tienen la misma potencia
Pn = sn*sn'
Pt = st(2)^2 * Tb