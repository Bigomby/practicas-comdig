% Parámetros de diseño
E = 4;
T = 4*10^(-3);
L = 8;

% Tiempo entre muestras
Tm = T/L;

% Señal discreta de energía E
sn = ones(1, L);
sn = sqrt(E/L)*sn;

% Energía de la señal discreta
msg = ['Energía de la señal discreta sn =', num2str(sn*sn'), 'J'];
disp (msg)

% Definición de la señal continua
st = sqrt(1/Tm)*sn;

% Energía de la señal continua
msg = ['Energía de la señal continua st =', num2str((st(1)^2)*T), 'J'];
disp (msg)

% Representación de las dos señales
figure(1)
subplot(1,2,1) , stem(sn)
xlabel('n'), ylabel('sn(n)')
axis([0 L+1 0 max(sn) * 1.1])
t = 0:Tm:T-Tm;
subplot(1,2,2), plot(t, st)
xlabel ('t[s]'), ylabel('st(t)')
axis([0 T 0 max(st) * 1.1])