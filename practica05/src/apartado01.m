Np = 1e6;

% Genero X
X = sign(rand(1,Np) - 0.75);
[Xi, Ci] = LCDfdp(X);
% stem(Ci, Xi);

% Genero N1 y N2 y las sumo
N1 = 2 * rand(1, Np) - 1;
N2 = 2 * rand(1, Np) - 1;
N = N1 + N2;

[Ni, Nci] = LCDfdp(N);

Y = X + N;

Y1 = Y(find(X==-1));
Y2 = Y(find(X== 1 ));

range = -3:0.01:3;
[Y1i, Y1ci] = LCDfdp(Y1, range);
[Y2i, Y2ci] = LCDfdp(Y2, range);

Y1i = Y1i * 3/4;
Y2i = Y2i * 1/4;

hold on
plot(Y1ci, Y1i); axis([-4 4]);
plot(Y2ci, Y2i, 'g'); axis([-4 4]);
hold off

index = find(Y1i < Y2i);
gamma = range(index(1));
gamma

dx = 0.01;
Pe1 = sum(Y1i(index(1):end) * dx)
Pe2 = sum(Y2i(index(1):end) * dx)

Pe = Pe1 + Pe2