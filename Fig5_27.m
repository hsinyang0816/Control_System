% Fig. 5.24  Feedback Control of Dynamic Systems, 8e 
%             Franklin, Powell, Emami
% script for Figure 5.24, Lead design.

clf; 
s=tf('s');
%sys=10*(s+1)/(s*(s+1)*(s+10)*(s+60)); % with lead only
sys=10*(s+1)*(s+0.4)/(s*(s+1)*(s+10)*(s+60)*(s+0.028)); % with lead and lag
rlocus(sys)
axis([-14 4 -8 8])
title('Root locus for lead and lag design')
hold on
z=0.1:.2:.9;
wn=2:2.5:15;
sgrid(z, wn)
% hold off

%set(gco,'LineWidth',4)