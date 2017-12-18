addpath('../lib/');

clear all;
close all;

minv = -10;
maxv = 10;
delta = 0.01;
r = minv:delta:maxv;
Np = 1e6;

X = sign(randi([0 3], 1, Np) - 2.5);
fmp = LCDfmp(X, r);

plot(r, fmp);
