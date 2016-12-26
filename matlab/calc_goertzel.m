function yabs = calc_goertzel(x, k)
% Goertzel algorithm generalized to non-integer
% multiples of fundamental frequency
% Petr Sysel and Pavel Rajmic

N = length(x);

A = 2*pi*(k/N);
B = 2*cos(A);
C = exp(-1i*A);
%D = exp(-1i*A*(N-1));

s(1) = 0;
s(2) = 0;
s(3) = 0;

for m = 1:N %N-1
  s(1) = x(m) + B*s(2) - s(3);
  s(3) = s(2);
  s(2) = s(1);
end

s(1) = B*s(2) - s(3);
y = s(1) - s(2)*C;
%y = y*D;

yabs = abs(y)/N;
