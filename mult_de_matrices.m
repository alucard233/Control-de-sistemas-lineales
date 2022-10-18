3%Multiplicación de matrices y matriz inversa
clc
clear all
A=[2 5 1;
   -2 4 1;
   5 3 1];
%B=[-10/3 -3 -16/3;
%   -1/3 0 -1/3;
%   7/3 2 10/3];
format rational
%AB=A*B
inversa=inv(A)
identidad=A*inv(A)

m1=(4/9)+(-26/63)
m2=(-5/9)+(19/63)