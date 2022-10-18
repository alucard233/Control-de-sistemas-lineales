%sistema compensado con PID
clc;
clear all;
numGcG=6.8632*poly([-8 -44.8086 -1.7]);
denGcG=poly([-3 -6 -10 0]);
GcG=tf(numGcG,denGcG)
%rlocus(GcG)
%sgrid(0.456,17.6497)
%axis([-10 1 -1 10])
%pause
T=feedback(GcG,1)
step(T)
hold on
G1=[1 1];
T1=tf(G1,G1);
step(T1)
