%% transmisorbinario: Devuelve Xn
function [Xn, s1, s2] = transmisorbinario(Bn, Rb, Eb, s1, s2, L)

  % Comprobamos que el tamaño de los pulsos sea correcto
  if length(s1) > L
    s1 = s1(1, 1:L);
  else
    s1 = [s1 zeros(1, L-length(s1))];
  end

  if length(s2) > L
    s2 = s2(1, 1:L);
  else
    s2 = [s2 zeros(1, L-length(s2))];
  end

  % Normalizo por si la señal no viene normalizada
  Es1 = s1 * s1';
  Es2 = s2 * s2';
  s1 = s1/sqrt(Es1);
  s2 = s2/sqrt(Es2);

  % Generar una secuencia con la energía corregida `An1` para los bits `0`.
  A1n = sqrt(Eb) * Bn;

  % Generar una secuencia con la energía corregida `An2` para los bits `1`.
  A2n = sqrt(Eb) * ~Bn;

  % Modular `An1` con un pulso `s1` para obtener `X1n`.
  X1n = kron(A1n, s1);

  % Modular `An2` con un pulso `s2` para obtener `X2n`.
  X2n = kron(A2n, s2);

  % Obtener `Xn` a partir de `X1n` y `X2n`.
  Xn = X1n + X2n;
end