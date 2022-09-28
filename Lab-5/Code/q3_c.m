w = 3*pi/10; N = 20;
n = 0:19;
xn = cos(w*n);
yn = fft(xn);

figure;
subplot(3,1,1)
stem(xn);
title('Subplot 1: Sequence');

subplot(3,1,2)
stem(abs(yn));
title('Subplot 2: Magnitude of DFT of sequence');

subplot(3,1,3)
stem(angle(yn));
title('Subplot 3: Phase of DFT of sequnece');

