function [y]=Qfunct(x)
% [y]=Qfunct(x)
% QFUNCT evalúa la función Q.
% y = 1/sqrt(2*pi) * integral desde x hasta inf de exp(-t^2/2) dt.
% y = (1/2) * erfc(x/sqrt(2)).

y=(1/2)*erfc(x/sqrt(2));