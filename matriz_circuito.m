%matriz para circuito
clc;
clear all;
syms s;
syms R1 R2 R3 R4;
syms C1 C2 C3;
syms Vi V1;
syms I1 I2;
A=[-(R2+R4+(1/(C2*s))) 0 Vi;
   -(R2+(1/(C2*s))) -(1/(C3*s)) 0;
   0 R3+(1/(C3*s)) V1];
B=[R2+R4+(1/(C2*s)) -(R2+(1/(C2*s))) 0;
   -(R2+(1/(C2*s))) R1+R2+(1/(C1*s))+(1/(C2*s))+(1/(C3*s)) -(1/C3);
   0 -(1/(C3*s)) R3+(1/(C3*s))];
pretty(A)
pretty(B)
resp=det(A)/det(B);
pretty(resp)
DI2=det(A);
D=det(B);
pretty(DI2)
pretty(D)
