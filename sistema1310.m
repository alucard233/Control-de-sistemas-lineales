numG=[1 8];
denG=poly([-3 -6 -10]);
G=tf(numG,denG)
rlocus(G)
sgrid(0.456,17.6497)
[K,polos]=rlocfind(G)
pause
T=feedback(K*G,1)
step(T)
