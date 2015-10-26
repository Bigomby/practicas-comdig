clear all;
close all;

N = 10;
An = 4 * randi([1,2], 1, N) - 6;
h = stem(An);
set(h, 'linewidth', 2.0);