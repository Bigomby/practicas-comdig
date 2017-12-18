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

subplot(2, 1, 1); plot(r, fdpY1);
subplot(2, 1, 2); plot(r, fdpY2);
