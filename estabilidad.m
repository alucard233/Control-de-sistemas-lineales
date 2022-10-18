%criterio de estabilidad revisando las raíces
numG=3;
denG=poly([0,-1,-2]);
G=tf(numG,denG)
T=feedback(G,1)
step(T)
