% Fig. 5.24  Feedback Control of Dynamic Systems, 8e 
%             Franklin, Powell, Emami
% script for Figure 5.24, Lead design.

clf; 
s=tf('s');
%sys=10*(s+1)/(s*(s+1)*(s+10)*(s+60)); % with lead only
sys=(6*s*(s^2+51*s+550)+55000)/(s^2*(s^2+51*s+550)+55000*s); % with lead and lag
rlocus(sys)
axis([-120 20 -120 120])
title('Root locus for z(not K) design')
hold on
z=0.2:0.2:0.8;
wn=7:20:107;
sgrid(z, wn)
% hold off

%set(gco,'LineWidth',4)