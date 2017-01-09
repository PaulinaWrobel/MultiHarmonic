function yabs = calc_sdft(x, k)

N = length(x);

A = 2*pi*(k/N);
%B = 2*cos(A);
C = exp(1i*A);
%r = 0.99999;
r = 1;
D = r*C;

s(1) = 0;
s(2) = 0;

for m = 1:N
  s(1) = x(m) + D*s(2);
  s(2) = s(1);
end

y = s(1);

yabs = abs(y)/N;
