addpath('../lib/');

clear all;
close all;

minv = -10;
maxv = 10;
delta = 0.01;
r = minv:delta:maxv;
Np = 1e6;

N1 = rand(1, Np);
N2 = rand(1, Np);
N = N1 + N2;
fdp = LCDfdp(N, r);

plot(r, fdp);
