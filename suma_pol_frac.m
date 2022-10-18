%suma de fracciones polinomicas
clc;
clear all;
syms s
p1=26/29;
p2=s +4;
p3=4.1*s +3;
p4=s^2 +4*s +29;
p5=p1/p2
p6=p3/p4
p7=p5+p6
expand(p7)
p8=p2*p4
expand(p8)
p9=p1*p4
p10=p2*p3
p11=expand(p9)
p12=expand(p10)
p13=p11+p12