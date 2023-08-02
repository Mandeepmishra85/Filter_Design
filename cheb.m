clc 
close all
clear all
wp= 0.2*pi;
ws = 0.3*pi;
rp=1;
rs = 15;
[n , wn] = cheb1ord(wp,ws,rp,rs);
[b,a] = cheby1(n,rp,wn);
sys =tf(b,a)
figure;
freqs(b,a);
figure;
pzmap(sys);
figure;
impulse(b,a);
[bz,az] = impinvar(b,a,10);
figure;
freqz(bz,az);
figure;
dimpulse(bz,az);
figure;
dstep(bz,az);
