clear all;
clf;
num=[1];
den=[1 2 2];
w=logspace(-1,2,1000);
[m,p]=bode(num,den,w);
subplot(2,1,1)
loglog(w,m,'LineWidth',2);
axis([.1 100 0.0001 1]);
grid on;
xlabel('\omega (rad/sec)');
ylabel('Magnitude');
title('Bode plot for 6.27(a):k=1  (a) magnitude');
subplot(2,1,2)
semilogx(w,p,'LineWidth',2);
axis([.1 100 -200 0]);
grid on;
xlabel('\omega (rad/sec)');
ylabel('Phase');
title('(b) phase');


