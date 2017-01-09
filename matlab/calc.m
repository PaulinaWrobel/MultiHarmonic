clear
w = open_file(1e4);
N = length(w);
FS = 20*1e6;
freq = linspace(0,1,N)*FS;

%%
sig_fft = calc_fft(w);

sigdb_fft = 20*log10(sig_fft);
figure
semilogx(freq,sigdb_fft)

%%
sig_g = zeros(N,1);
for m = 1:N
    sig_g(m) = calc_goertzel(w, m-1);
end

sigdb_g = 20*log10(sig_g);
figure
semilogx(freq,sigdb_g)

%%
sig_s = zeros(N,1);
for m = 1:N
    sig_s(m) = calc_sdft(w, m-1);
end

sigdb_s = 20*log10(sig_s);
figure
semilogx(freq,sigdb_s)


%%
figure
semilogx(freq,sigdb_fft,freq,sigdb_g,freq,sigdb_s)
