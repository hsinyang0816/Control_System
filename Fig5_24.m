% Fig. 5.24  Feedback Control of Dynamic Systems, 8e 
%             Franklin, Powell, Emami
% script for Figure 5.24, Lead design.

clf; 
s=tf('s');
sys=(s+1.78)/((s^2)*(s+20));
rlocus(sys)
axis([-14 4 -8 8])
title('Root locus for lead design')
hold on
r=roots([1 20 72 72*1.78]);  % s(s+1)(s+10)+70(s+2)
plot(r,'*')
z=0.1:.2:.9;
wn=2:2:15;
sgrid(z, wn)
% hold off

%set(gco,'LineWidth',4)