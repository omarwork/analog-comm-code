fs = 1000;               % sampling frequency
t = 0:1/fs:9.99; % time vector
S = cos(2*pi*15*t);
n = length(S);
X = fft(S);
f = (0:n-1)*(fs/n);     %frequency range
figure
plot(f,abs(X))
Y = fftshift(X);
fshift = (-n/2:n/2-1)*(fs/n);
figure
plot(fshift,abs(Y))


