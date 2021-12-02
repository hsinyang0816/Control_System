clear all;
clf;
num=[50];
temp=conv([0.5 1],[0.5 1]);
den = conv([1 0],temp);
w=logspace(-1,3,1000);
[m,p]=bode(num,den,w);
subplot(2,1,1)
loglog(w,m,'LineWidth',2);
axis([.1 1000 .000001 10000])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Magnitude');
title('Bode plot for a TF w/ complex p & z. (a) magnitude');
subplot(2,1,2)
semilogx(w,p,'LineWidth',2);
axis([.1 1000 -300 -50])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Phase');
title('(b) phase');



