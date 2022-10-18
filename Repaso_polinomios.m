%Repaso de polinomios
clc;
clear all;
%Un poolinomio de grado n de coeficientes a1, a2, ....,an, an+1
%El polinomio p=x^3 -2x^2 +x-2 se representa
%por el vector [1 -2 1 -2]
%Los polinomios se pueden representar de forma simbólica mediante la
%función poly2sym(p)
p=[1 -2 1 -2];
poly2sym(p)
%A su vez un polinomio en forma simbólica se puede convertir
% en el vector formado por sus coeficientes mediante sym2poly
syms x;
sym2poly(x^3 -2*x -4)

%Valor de un polinomio
%Calculamos el valor de un polinomio cuando se conoce el valor de la
%variable x
%Sea p=x^5 -3.5*x^4+2.75*x^3 -3.875*x +1.25
%Cuando se expresa un polinomio de forma simbólica de utiliza
%la función subs
syms x;
p= x^5 -3.5*x^4 +2.75*x^3 +2.125*x^2 -3.875*x +1.25;
subs(p,x,1.5)

%La función polyval nos proporciona este valor cuando se expresa el
%polinomio en forma de vector formado por los coeficientes
p=[1 -3.5 2.75 2.125 -3.875 1.25];
x=1.5;
polyval(p,x)
x=0:0.5:3;
polyval(p,x)

%La función polyval se puede utilizar para representar graficamente un
%polinomio
x=-1:0.1:3;
y=polyval([1 -3.5 2.75 2.125 -3.875 1.25],x);
plot(x,y)
grid on
xlabel('x')
ylabel('y')
title('Grafica de un polinomio')

%Queremos sumar los polinomios p1=x^3 -2*x - 4 y p2= x^2 + 3*x +4
%De forma sombólica
syms x;
p1=x^3 -2*x -4;
p2=x^2 + 3*x +4
p1+p2

%Para sumar dos polinomios en forma de vectores, los vectores deben de
%tener las mismas dimensiones
p1=[1 0 -2 -4];
p2=[0 2 3 4];
p1+p2

%Producto de dos polinomios
%Queremos multiplicar los polinomios p1= x^3 -2*x -4 y p2=x^2 +3*x +4
%De forma simbólica
syms x;
p1=x^3 -2*x -4
p2=x^2 +3*x +4
p=p1*p2
expand(p)

%Producto de dos polinomios mediante la función conv
p1=[1 0 -2 -4];
p2=[1 3 4];
p=conv(p1,p2)

%Cociente
% x^3 +5*x^2 +11*x + 13/x^2 +2*x +4 =(x+3)+(x+1)/(x^2 +2*x +4)
%De forma simbólica
syms x
p1=x^3 +5*x^2 +11*x + 13;
p2=x^2 +2*x +4;
p4=p1/p2
p5=simplify(p4)

%La función deconv nos proporciona el cociente y el resto de la división
%entre dos polinomios
p1=[1 5 11 13];
p2=[1 2 4];
[q r]=deconv(p1,p2)
