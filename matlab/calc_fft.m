function Xabs = calc_fft(x)

N = length(x);

%x = x.*hamming(length(x));
X = fft(x);
Xabs = abs(X)/N;
