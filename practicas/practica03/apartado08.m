addpath('../lib/');

clear all;
close all;

minv = -10;
maxv = 10;
delta = 0.01;
r = minv:delta:maxv;
Np = 1e6;

N1 = 2 * rand(1, Np) - 1;
N2 = 2 * rand(1, Np) - 1;
N = N1 + N2;

Y1 = N - 1;
Y2 = N + 1;

fdpY1 = LCDfdp(Y1, r);
fdpY2 = LCDfdp(Y2, r);

fY1 = 3/4 * fdpY1;
fY2 = 1/4 * fdpY2;

idx = find((fY1 <= fY2) & (fY1 > 0), 1);
g = r(idx);

Pe1 = sum(fdpY1(idx:end) * delta);
Pe2 = sum(fdpY2(1:idx) * delta);

Pe = Pe1 * 3/4 + Pe2 * 1/4

Pe1d = length(find(Y1 >= g)) / length(Y1);
Pe2d = length(find(Y2 <= g)) / length(Y2);
Ped = Pe1d * 3/4 + Pe2d * 1/4

assert(Pe, Ped, 1e-3);
