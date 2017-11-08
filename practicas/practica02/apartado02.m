% Definimos el número de muestras
Np = 1e6;

% Definimos las variables aleatorias del enunciado
N1 = sqrt(4) * randn(1,Np) + 1;
N2 = sqrt(4) * randn(1,Np) - 1;
% N2 = N1 - 2;

% Sumamos las variables aleatorias de entrada
x = N1 + N2;

% Calculamos y dibujamos la variable aleatoria resultante de la suma
[fx,cx] = LCDfdp(x);
plot(cx,fx);
