L = 4;       % Número de muestras
M = 4;       % Número de símboles en el alfabeto
K = log2(M); % Número de bits por símbolo
Rb = 1000;   % Régimen binario 1kpbs

% a) Duración del pulso básico
Tb = 1 / Rb;
Ts = Tb * K;

% b) Tiempo de muestreo
Tm = Ts / L;

% c) Baudios
Rs = 1 / Ts;
