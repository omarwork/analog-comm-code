t = 0:1/50:10-1/50;                     
x = sin(2*pi*15*t) ;
figure()
plot(t,x)
y = fft2(x);
y=fftshift(y);     
f = (0:length(y)-1)*50/length(y)
figure()
plot(f,abs(y))
title('Magnitude')