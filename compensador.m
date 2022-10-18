numGcG=5.1774*poly([-56.4302 -8]);
denGcG=poly([-3 -6 -10]);
GcG=tf(numGcG,denGcG)
rlocus(GcG)
sgrid(0.456, 17.6497)
pause
T=feedback(GcG,1)
step(T)
