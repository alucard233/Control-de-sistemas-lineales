%multiplicación de polinomios
clc;
clear all;
u = [1 4 1];
v = [1 3 1];
%Use convolution to multiply the polynomials.
w = conv(u,v)