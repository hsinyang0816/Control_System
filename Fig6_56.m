clear all;
%close all;
clf
w = logspace(-3,1,100);
k = 10;
num = k;
den = conv([1/1.4 1 0],[1/3 1]);
[m,p] = bode(num,den,w);
[OLGM,OLPM,OLWcg,OLWcp] = margin(m,p,w);
data0 = [OLGM,OLPM,OLWcg,OLWcp];
num = conv(num,[1/0.04 1]);
den = conv(den,[1/0.0038 1]);
[mc,pc] = bode(num,den,w);
[D1GM,D1PM,D1Wcg,D1Wcp] = margin(mc,pc,w);
data1 = [D1GM,D1PM,D1Wcg,D1Wcp];
figure(1)
subplot(2,1,1)
loglog(w,m,'-',w,ones(100,1),'-',w,ones(100,1),'-','LineWidth',2);
axis([ 0.001, 10, 1e-2, 1e4])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Magnitude');
title('Before lead compensator : (a) magnitude');
subplot(2,1,2)
semilogx(w,p,'-',w,-180*ones(100,1),w,-180*ones(100,1),'LineWidth',2);
axis([ 0.001, 10, -270, -90])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Phase');
title('(b) phase');

figure(2)
subplot(2,1,1)
loglog(w,mc,'-',w,ones(100,1),'-',w,ones(100,1),'-','LineWidth',2);
axis([ 0.001, 10, 1e-2, 1e4])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Magnitude');
title('After lead compensator : (a) magnitude');
subplot(2,1,2)
semilogx(w,pc,'-',w,-180*ones(100,1),w,-180*ones(100,1),'LineWidth',2);
axis([ 0.001, 10, -270, -90])
grid on;
xlabel('\omega (rad/sec)');
ylabel('Phase');
title('(b) phase');
