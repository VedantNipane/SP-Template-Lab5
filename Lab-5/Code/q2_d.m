n = 0:9;

x1 = randn([1 10]);
x2 = (n==3);

linear_conv = conv(x1,x2);
circ_conv = cconv(x1,x2,10);

x1_dft = fft(x1,10);
x2_dft = fft(x2,10);
x1_dft_l = fft(x1,19);
x2_dft_l = fft(x2,19);

y1_linear = x1_dft_l.*x2_dft_l;
y2_linear = ifft(y1_linear);

y1_cir = x1_dft.*x2_dft;
y2_cir = ifft(y1_cir); 
figure;

subplot(2,2,1)
stem(linear_conv);
title('Subplot 1: Linear Convolution using function');

subplot(2,2,2)
stem(y2_linear);
title('Subplot 2: Linear convolution using DFT and IDFT');

subplot(2,2,3)
stem(circ_conv);
title('Subplot 3: Circular convolution using function');

subplot(2,2,4)
stem(y2_cir);
title('Subplot 4: Circular convolution using DFT and IDFT');

