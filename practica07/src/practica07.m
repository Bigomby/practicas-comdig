clear all
close all

M = [2 4 8 16 32];
Eb = 4;
L = 4;
Rb = 100;
Nb = 1e6;

Bn = randi([0 1], 1, Nb);

s = [ ones(1,L/2) -ones(1,L/2)];

L = ceil (L/2) * 2;
Tb = 1/Rb;
Tm = Tb/L;
Fm = 1/Tm;

for i = 1:length(M)
  [Xn, Bn, phi, alfabetopam, An] = transmisorpam(Bn, Eb, M(i), s, L);
  S = (1/(Nb*L)) * abs(fftshift(fft(Xn))).^2;
  Sx = S + S/length(M);
end

ff = linspace(-Fm/2,Fm/2,length(S));
% El espectro densidad de potencia ideal
Sx_ideal = Eb*(sin(pi* ff *Tb/2).^2) .* (sinc(ff *Tb/2).^2) ;
Sx_idealdbm = 10*log10(10^3*Sx_ideal);
subplot(2,1,1) ; h=plot(ff, Sx_idealdbm);
axis([-Fm/2 Fm/2 -50 45]);
grid on
title('Espectro densidad de potencia ideal');

% El espectro densidad de potencia simulado
Sdbm = 10*log10(10^3*Sx);
subplot(2,1,2) ; h=plot(ff, Sdbm, 'r');
xlabel('f[Hz]');
ylabel('S_X(f)[dBm]');
axis([-Fm/2 Fm/2 -50 45]);
grid on;
title('Espectro densidad de potencia simulado');

index = find(ff > 0, 1);

Rb/-Sdbm(index)