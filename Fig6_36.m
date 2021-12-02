clear all;
clf;
num=[1 2];
den=[1 -4 4];

figure(1);
[re,im] = nyquist(num,den);
plot(re,im,re,-im,'LineWidth',2);
xlabel('Real');
ylabel('Imaginary');
title(' 6.36:Nyquist plot');

figure(2);
rlocus(tf(num, den));
xlabel('Real');
ylabel('Imaginary');
title(' 6.36:root locus for K > 0');

figure(3);
rlocus(tf(-num, den));
xlabel('Real');
ylabel('Imaginary');
title(' 6.36:root locus for K < 0');



