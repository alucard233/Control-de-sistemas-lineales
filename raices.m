%RAICES I Polos
clc;
clear all;
roots([1 6 11 6])
roots([1 4])
G=roots([1 6 6])
Gs=rats(G)
NumG=[1 3];
DenG=poly([-1,-3,-5])
G2=tf(NumG,DenG)
rlocus(G2)
A=[1 3]
B=[1 1]
C=[1 5]
D=conv(A,B)
E=conv(D,C)