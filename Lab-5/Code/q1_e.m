fo = 12;
fs = 64;
L = 16;
for b = 1:4
    
    x = zeros(L);
    for k = 0:L-1
        x(k+1)= cos((2*pi*fo*k)/fs);
    end

    y = fft(x,8*L);
    subplot(2,2,b);
    plot(abs(y));
    str = "DFT of signal with m = 8 and L = " + L;
    title(str);
    xlabel("n");
    ylabel("values of DFT");
    L = L*2;
end
