clear all;
%close all;
clf
w = logspace(-2,3,100);
k = 100;
num = k;
den = [0.1 1 0];
[m,p] = bode(num,den,w);
[OLGM,OLPM,OLWcg,OLWcp] = margin(m,p,w);
data0 = [OLGM,OLPM,OLWcg,OLWcp];
num = conv(num,[1/8.52 1]);
den = conv(den,[1/22.36 1]);
num = conv(num,[1/4.47 1]);
den = conv(den,[1/0.568 1]);
[mc,pc] = bode(num,den,w);
[D1GM,D1PM,D1Wcg,D1Wcp] = margin(mc,pc,w);
data1 = [D1GM,D1PM,D1Wcg,D1Wcp];
figure(1)
subplot(2,1,1)
loglog(w,m,'-',w,ones(100,1),'-',w,ones(100,1),'-','LineWidth',2);
axis([ 0.01, 1000, 1e-4, 1e4])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Magnitude');
title('6.62 (b) : (a) magnitude');
subplot(2,1,2)
semilogx(w,p,'-',w,-180*ones(100,1),w,-180*ones(100,1),'LineWidth',2);
axis([ 0.01, 1000, -200, -80])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Phase');
title('(b) phase');

figure(2)
subplot(2,1,1)
loglog(w,mc,'-',w,ones(100,1),'-',w,ones(100,1),'-','LineWidth',2);
axis([ 0.01, 1000, 1e-4, 1e4])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Magnitude');
title('6.62 (f) : (a) magnitude');
subplot(2,1,2)
semilogx(w,pc,'-',w,-180*ones(100,1),w,-180*ones(100,1),'LineWidth',2);
axis([ 0.01, 1000, -200, -80])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Phase');
title('(b) phase');
