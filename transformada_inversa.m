%Hallar la transformada inversa de Laplace de F(s)
clc;
clear all;
syms s;
F=(3/(s+3)-2/(s+1)+1/s);
f=ilaplace(F)
pretty(f)