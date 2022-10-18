%Transformada inversa de Laplace
clc
syms s t;
F=(5*s^2 + 23*s + 38)/((s+4)*(s^2+4*s+29));
Li=ilaplace(F)
F2=(5*s^2 + 23*s + 38)/(s^3 +8*s^2 +45*s +116);
Li2=ilaplace(F2)
F3=((26/29)/(s +4)) + ((4.103448*s +3)/(s^2 +4*s +29));
Li3=ilaplace(F3)
simplify(Li3)