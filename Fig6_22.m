clear all;
clf;
num=[1 1];
den=[1 10];
w=logspace(-1,2,1000);
[m,p]=bode(num,den,w);
subplot(2,1,1)
loglog(w,m,'LineWidth',2);
axis([.1 100 0.01 10])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Magnitude');
title('Bode plot for Minimum phase system (a) magnitude');
subplot(2,1,2)
semilogx(w,p,'LineWidth',2);
axis([.1 100 0 100])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Phase');
title('(b) phase');



