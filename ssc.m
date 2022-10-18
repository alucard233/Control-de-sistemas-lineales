%sistema sin compensar
numG=1128.435*poly([-4]);
denG=poly([0 -6 -10 -15.8169]);
G=tf(numG,denG)
OS=20;
z=log(OS/100)/sqrt(pi^2+[log(OS/100)]^2)
rlocus(G)
sgrid(z,7.9762)
[K,p]=rlocfind(G)
pause
T=feedback(G,1)
step(T)
title(['Respuesta al escalón unitario para K=',num2str(K)])