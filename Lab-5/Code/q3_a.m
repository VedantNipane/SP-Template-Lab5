L = 4; N = 4;
xn = [ones(L,1); zeros(N-L,1)];
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

