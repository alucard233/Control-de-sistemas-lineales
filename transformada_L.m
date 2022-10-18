%1.5 Programación en matlab
%Transformada de Laplace
clc;
clear all;
syms t
f=1-2*exp(-t)+3*exp(-3*t);
F=laplace(f)
pretty(F)