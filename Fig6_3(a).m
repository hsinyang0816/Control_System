clear all;
clf;
num=[1];
den=conv([1 0],[0.1 1]);
w=logspace(-1,3,1000);
[m,p]=bode(num,den,w);
subplot(2,1,1)
loglog(w,m,'LineWidth',2);
axis([.1 1000 .0001 100])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Magnitude');
title('Bode plot for a TF w/ complex p & z. (a) magnitude');
subplot(2,1,2)
semilogx(w,p,'LineWidth',2);
axis([.1 1000 -200 -50])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Phase');
title('(b) phase');



