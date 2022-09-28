n = 0:9;

x1 = randn([1 10]);
x2 = (n==3);

linear_conv = conv(x1,x2);
circ_conv = cconv(x1,x2);

figure;
subplot(2,1,1)
stem(linear_conv);
title('Subplot 1: Linear convolution');

subplot(2,1,2)
stem(circ_conv);
title('Subplot 2: Circular Convolution');
