n = 0:9;
x1 = randn([1 10]);
x2 = (n==3);

figure;
subplot(2,1,1)
stem(x1);
title('Subplot 1: x1');

subplot(2,1,2)
stem(n,x2);
title('Subplot 2: x2');
