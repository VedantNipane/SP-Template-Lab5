n = 0:9;

x1 = randn([1 10]);
x2 = (n==3);

linear_conv = conv(x1,x2);
circ_conv = cconv(x1,x2);

x1_dft = fft(x1);
x2_dft = fft(x2);
x1_idft = ifft(x1);
x2_idft = ifft(x2);

figure;
subplot(2,2,1)
stem(abs(x1_dft));
title('Subplot 1: DFT of x1');

subplot(2,2,2)
stem(abs(x2_dft));
title('Subplot 2: DFT of x2');

subplot(2,2,3)
stem(abs(x1_idft));
title('Subplot 3: IDFT of x1');

subplot(2,2,4)
stem(abs(x2_idft));
title('Subplot 4: IDFT of x2');

