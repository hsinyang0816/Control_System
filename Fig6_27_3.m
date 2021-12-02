clear all;
clf;
num=[1];
den=[1 2 2];

rlocus(tf(num, den));
[k, p]=rlocfind(tf(num, den));
xlabel('Real');
ylabel('Imaginary');
title(' 6.27(c):root locus');



