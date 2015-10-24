# Práctica 2

## Funciones y scripts

Ambos son ficheros con extensión `.m`. Sin embargo:

- **Funciones:** La primera línea debe contener la sentencia:
  ```matlab
  function salida = mifuncion(entrada)
  ```
  Las variables de la función son locales a la función.
- **Scripts**: Las variables de un scripts son válidas dentro de todo el script.

## Histograma

Es una aproximación de una función densidad de probablilidad.

### Ejemplo: Dibujar histograma

Vamos a dibujar el histogrma de una gausiana:

Para generar la gausiana: `sqrt(var) * rand(1, <n. de elementos>) + media`

<center><center>
<img width="75%" src="https://i.imgur.com/ZDnKCNJ.png">
</center></center>

```matlab
% Generamos la gausiana
x=randn(1, 1000)

% Calculamos el histograma con 100 muestras
[hi, ci]=hist(x, 100);

% Longitud de x
Np = length(x);

% Calculamos la función densidad de probabilidad
fxi = hi/Np/(ci(2), ci(1))
```

## Función densidad de probabilidad

```matlab
%% LCDfdp: Calcula la fdp de una Waa de forma empírica
function [fxi,ci] = LCDfdp(x)

  % Calculamos el histograma con 100 muestras
  [hi, ci]=hist(x, 100);

  % Longitud de x
  Np = length(x);

  % Calculamos la función densidad de probabilidad
  fxi = hi/Np/(ci(2) - ci(1));
```

# Ejercicio 1

## Apartado 1

> Generar Np = 10 6 muestras de dos variables aleatorias gaussianas N 1
> y N 2 , conjunta-mente gaussianas, con medias respectivamente +1 y −1
> y varianza σ 2 = 4. Obtener yrepresentar en una misma figura sus
> funciones densidad de probabilidad.

### Solución

<center><center>
<img width="75%" src="https://i.imgur.com/QpjURlL.png">
</center></center>

```matlab
Np = 1e6;
N1 = sqrt(4) * randn(1,Np) + 1;
N2 = sqrt(4) * randn(1,Np) - 1;

[f1, c1] = LCDfdp(N1);
plot(c1,f1);
```

## Apartado 2

> Se define una nueva variable aleatoria gaussiana (¿por qué es gaussiana?) X en la forma: 
> $$X = N 1 + N 2$$
> Encontrar teórica y experimentalmente su media, varianza y función densidad de  probabilidad. Representando las dos funciones teóricas y experimental en un mismo gráfico, comprobar su coincidencia.

> **Recordamos**: El teorema central del límite nos dice que la suma de muchas variables aletorias de distinta naturaleza convergen a una variable aleatoria gaussiana.

| Parámetro  | Forma Teórica | Forma Experimental |
|------------|---------------|--------------------|
| $\mu$      | $0$           | $me = mean(x) $    |
| $\sigma^2$ | $8$           | $ve = var(x) $     |

### Calculamos fdp

#### `fdp` experimental

```matlab
fx,cx=LCDfdp(x); plot(x,fx);
```
<center><center>
<img width="75%" src="https://i.imgur.com/NETBoCf.png">
</center></center>

## Apartado 3

> Sea ahora una nueva variable aleatoria X definida en la forma:
$$X = A + N$$
siendo $A$ una variable aleatoria discreta que toma con probabilidades $\{1/4, 3/4\}$ los valores $+1$, $− 1$, respectivamente. $N$ es una variable aleatoria gaussiana de media $0$ y varianza $\sigma^2 = 0.1$. Encontrar teórica y experimentalmente las funciones densidad de probabilidad de las siguientes variables aleatorias:
- $X_1  \equiv X | A = +1$
- $X_2  \equiv X | A = −1$
- $X$.

> **Nota**: para generar la función $A$, que es una variable aleatoria discreta, usamos:
>```matlab
>A = sign(rand(1,Np) - 0.75)
>```

### Solución

<center><center>
<img width="100%" src="https://i.imgur.com/Q13GXxf.png">
</center></center>

| Parámetro  | Forma Teórica         | Forma Experimental |
|------------|-----------------------|--------------------|
| $X_1$      | Rango, evaluar, plot  | `LCDfdp(); plot()` |
| $X_2$      | Rango, evaluar, plot  | `LCDfdp(); plot()` |
| $X$        | Rango, evaluar, plot  | $ve = var(x) $     |