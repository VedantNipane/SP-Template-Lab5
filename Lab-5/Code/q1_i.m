
[data1, fs1] = audioread('Audio Files_0.wav');
data_fft1 = fft(data1);
figure;
plot(abs(data_fft1));
xlabel('Frequency'); 
title ('FFT Spectrum');

[data2, fs2] = audioread('sample.wav');
data_fft2 = fft(data2);
figure;
plot(abs(data_fft2));
xlabel('Frequency'); 
title ('FFT Spectrum');