function [Rx,tau , maxlag] = autocorrelacion (Eb,M,s, L,Tb,Np)
  %
  % [Rx,tau] = autocorrelacion (Eb,M,s,L,Tb)
  %
  % Eb = Energía media por bit transmitida en Julios
  % M = Número de símbolos del código PAM
  % s = Pulso básico
  % L = Número de puntos que vamos a utilizar en la representación de un
  % símbolo
  % Tb = Duración del bit en segundo
  % Np = Número de bits utilizados en la simulación
  %
  % Devuelve:
  % Rx = El promedio temporal de la función autocorrelación
  % tau = Un vector de tiempo para su representación
  % maxlag =[-maxlag,maxlag] es el intervalo de cálculo de la autocorrelación
  % Llamemos una primera vez a transmisorpam para obtener algunos parámetros que han podido cambiar
  [Xn,Bn,s,~]=transmisorpam(randi (2,1, Np)-1,Eb,M,s, L) ;
  Np=length(Bn)
  L=length(s) ;
  Ns=Np/log2(M);
  % Vamos a realizar el cálculo de la autocorrelación entre -maxlag y maxlag
  maxlag = 1024;
  % Cálculo de la autocorrelación
  [Xn,~,~,~]=transmisorpam(randi (2,1, Np)-1, Eb, M,s,L) ;
  Rx=xcorr(Xn,maxlag)/(Np*Tb);
  % Periodo y frecuencia de muestreo
  Tm = (Tb*log2(M))/L;
  Fm = 1/Tm;
  tau = linspace(-maxlag*Tm,maxlag*Tm,2*maxlag+1); % El eje t escalado en sg
end