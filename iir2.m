clc
close all
clear all
b=[1 .1];
a=[1 .2 9.01];
[bz,az]=bilinear(b,a,2);
figure;
freqz(bz,az);
figure;
dimpulse(bz,az);
figure;
sys=tf(b,a); %creates a continuous time T>F model setting num and den
step(sys);
figure;
dstep(bz,az);
