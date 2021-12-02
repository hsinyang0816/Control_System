s=tf('s');
k1 = 1200;
k2 = 2;
D = 0.5*k1*(s+3)/(s+10);
G = 1/(s*(s+10+k2));
CL = feedback(D*G,1);
step(CL);