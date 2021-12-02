clear all;
clf
a=0.01;
numG=[1/a 1];
denG=[1 1 1];
w=logspace(-2,2,200);
[m1,p1]=bode(numG,denG,w);
a=0.1;
numG=[1/a 1];
[m2,p2]=bode(numG,denG,w);
a=1;
numG=[1/a 1];
[m3,p3]=bode(numG,denG,w);
a=10;
numG=[1/a 1];
[m4,p4]=bode(numG,denG,w);
a=100;
numG=[1/a 1];
[m5,p5]=bode(numG,denG,w);

figure(1)
loglog(w,m1,w,m2,w,m3,w,m4,w,m5);
legend('a = 0.01','a = 0.1','a = 1','a = 10','a = 100','Location','northwest');
axis([.01 100 .001 100]);
grid on;
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('Fig. 6.11 Magnitude');
%pause;
figure(2)
semilogx(w,p1,w,p2,w,p3,w,p4,w,p5);
legend('a = 0.01','a = 0.1','a = 1','a = 10','a = 100','Location','northwest');
grid on;
xlabel('\omega (rad/s)');
ylabel('Phase (deg)');
title('Fig. 6.11 phase');
figure(1)