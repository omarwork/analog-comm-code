t=linspace(0,5,250);
y=0.5*cos(30*2*pi*t)+0.3*sin(40*2*pi*t);
YinF=fftshift(fft(y));
F=linspace(-25,25,length(y))
figure();
plot(F,abs(YinF))