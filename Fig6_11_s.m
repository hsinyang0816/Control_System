clear all;
clf
s = tf('s'); 
a=0.01;
G1 = (s/a+1)/(s^2+s+1);
a=0.1;
G2 = (s/a+1)/(s^2+s+1);
a=1;
G3 = (s/a+1)/(s^2+s+1);
a=10;
G4 = (s/a+1)/(s^2+s+1);
a=100;
G5 = (s/a+1)/(s^2+s+1);

step(G1,G2,G3,G4,G5);
legend('a = 0.01','a = 0.1','a = 1','a = 10','a = 100','Location','northeast');
axis([0 10 -10 60]);
grid on;
xlabel('t');
ylabel('y(t)');
title('Unit Step Response');
%pause;
