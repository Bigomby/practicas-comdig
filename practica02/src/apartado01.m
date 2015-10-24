% Definimos el número de muestras
Np = 1e6;

% Definimos las variables aleatorias del enunciado
N1 = sqrt(4) * randn(1,Np) + 1;
N2 = sqrt(4) * randn(1,Np) - 1;

% Calculamos la densidad de probabilidad usando la función LCDfdp
[f1, c1] = LCDfdp(N1);
[f2, c2] = LCDfdp(N2);

% Las dibujamos en la misma gráfica
hold on
plot(c1,f1);
plot(c2,f2);
hold off