addpath('../lib/');

clear all;
close all;

apartado01;

%%%%%%%%%%%%%%
% Resolución %
%%%%%%%%%%%%%%

k = log2(M);
Tb = 1/Rb;
Ts = k * Tb;
Tm = Ts / L;
Xt = 1/sqrt(Tm) * Xn;

EXn = Xn * Xn';
XnEbav = EXn / Nb

EXt = Tm * Xt * Xt';
XtEbav = EXt / Nb

assert(XnEbav, XtEbav, 1e-4)
