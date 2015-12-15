clear all
close all

% Obtención de los parámetros de la simulación
Np =       input('No de bits a transmitir ......................:');
Eb =       input('Energia media transmitida ....................:');
Rb =       input('Tasa de transmision en bps ...................:');
s =        input('Pulso básico para transmisión  ...............:');
L =        input('No de muestras por bit .......................:');
NumVeces = input('Número de veces que debemos promediar ........:');

% Forcemos que el no de muestras por bit sea par
L = ceil (L/2) *2;
Tb = 1/Rb;
Tm = Tb/L;
Fm = 1/Tm;
S = zeros(1, Np*L);

% Calculemos el PSD de la señal transmitida
for i =1:NumVeces
  [Xn]=transmisorpam(randi(2,1,Np)-1, Eb, 2, s , L) ;
  S = S+(1/(Np*L))*abs(fftshift(fft(Xn))).^2;
end

% El promedio de los PSD calculados
Sx = S/NumVeces;
ff = linspace(-Fm/2,Fm/2,length(S));

% El espectro densidad de potencia ideal
Sx_ideal = Eb*(sin(pi* ff *Tb/2).^2) .*( sinc ( ff *Tb/2).^2) ;
Sx_idealdbm=10*log10(10^3*Sx_ideal);
subplot(211) ; h=plot( ff , Sx_idealdbm);
set (h, ' linewidth ' , 1.0) ;
xlabel ( ' f [Hz]' , ' FontSize ' ,12, ' FontName','Times') ;
ylabel ( ' S_X(f)[dBm]', ' FontSize ' ,12, ' FontName','Times') ;
axis ([-Fm/2 Fm/2 -max(Sx_idealdbm) max(Sx_idealdbm)+10]);
grid on
title ( ' Espectro densidad de potencia ideal ' , ' FontWeight' , ' bold ' ,...
' FontName','Times') ;

% El espectro densidad de potencia simulado
Sdbm=10*log10(10^3*Sx);
subplot(212) ; h=plot( ff , Sdbm,'r ' ) ;
set (h, ' linewidth ' , ' default ' ) ;
xlabel ( ' f [Hz]' , ' FontSize ' ,12, ' FontName','Times') ;
ylabel ( ' S_X(f)[dBm]', ' FontSize ' ,12, ' FontName','Times') ;
axis ([-Fm/2 Fm/2 -max(Sdbm) max(Sdbm)+10]);
grid on;
title ( ' Espectro densidad de potencia simulado' , ' FontWeight' , ' bold ' ,...
' FontName','Times') ;