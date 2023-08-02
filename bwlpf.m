clc 
close all
clear all
wp= 400/2000;
ws = 800/2000;
rp=4;
rs = 30;
[n , wn] = buttord(wp,ws,rp,rs);
[b,a] = butter(n,wn);
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
