s=tf('s');
%sys=10*(s+1)/(s*(s+1)*(s+10)*(s+60)); % with lead only
sys=10*(s+1)*(s+0.4)/(s*(s+1)*(s+10)*(s+60)*(s+0.028)); % with lead and lag
CL = feedback(420*sys,1);
step(CL);