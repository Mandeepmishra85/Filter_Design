%To design an IIR Digital filter 

clc
clear all
b = [1 .1];
a = [1 .2 9.01];
figure;
freqs(b,a);
figure;
freqz(b,a);
figure;
subplot(411);
impulse(b,a);
[bz,az] = impinvar(b,a,2);
subplot(412);
dimpulse(bz,az);
[bz,az]=impinvar(b,a,10);
subplot(413);
dimpulse(bz,az);
[bz,az] = impinvar(b,a,20);
subplot(414);
dimpulse(bz,az);
