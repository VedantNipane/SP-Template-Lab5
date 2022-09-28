fo = 12;
fs = 64;
L = 16;
x = zeros(L);
for k = 0:15
    x(k+1)= cos((2*pi*fo*k)/fs);
end
w = hann(L);
x= x.*w;
for k = 0:3
    m= 2^k;
    y = fft(x,m*L);
    subplot(2,2,k+1);
    stem(abs(y));
    str = "DFT of signal with m = " + m;
    title(str);
    xlabel("n");
    ylabel("Values of DFT");
end
