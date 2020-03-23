%Sound file Input
[y,fs]=audioread('eric.wav');
plot(y)
%sound(y,fs)


n = length(y);
%X = fft(y);
%f = (0:n-1)*(fs/n);     %frequency range

%Displaying the Frequency Domain Sound  
Y = fftshift(fft(y));
fshift = (-n/2:n/2-1)*(fs/n);
%fig2
figure
plot(fshift,abs(Y))
%Filtering the sound file 
Y([1:171353 239897:end])=0;
%fig3
%figure
%plot(fshift,abs(Y))
w=real(ifft(ifftshift(Y)));
%fig4
%figure
%plot(w)
%sound(w,fs)

fc=100000
w = resample(w,5*fc,fs);
n2=length(w)
duration=n/fs;
t=linspace(0,duration,n2);
carrier=cos(2*pi*fc*t);
carrier=carrier';



dsp_scmodulated=carrier.*w;
%plot(dsp_scmodulated);



Fourier = fftshift(fft(dsp_scmodulated));
Freq_Dom_lim=5*fc;
fshift2 = (-n2/2:n2/2-1)*(Freq_Dom_lim/n2);
figure
plot(fshift2,abs(Fourier))