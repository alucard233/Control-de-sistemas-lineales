%1.5 Programación en matlab
%Funciones de transferencia
%Simular función de transferencia
clc;
clear all;
H=tf(1,1)
step(H)
numG=[2 0 3 5];
denG=[1 5 8 4 2];
G=tf(numG,denG)
hold on
T=feedback(G,1);
step(T)
