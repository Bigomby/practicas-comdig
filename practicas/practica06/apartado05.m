addpath('../lib/');

clear all;
close all;

L = 8;
Eb = 7/4;
M = 8;
Nb = 1e6;

Bn = randi([0 1], 1, Nb);
gn = [ ones(1, L/4) ones(1, L/4)  zeros(1, L/2) ];
p = gn;

[Xn, Bn, An, phi, alfabeto] = transmisorpam(Bn, Eb, M, p, L);

Ns = length(An);
sn = phi * reshape(Xn, L, Ns);

SNRdb = [4:2:18];

for ii=1:length(SNRdb)
  SNR = 10^(SNRdb(ii)/10);
  N0 = Eb/SNR;
  awgn = sqrt(N0/2) * randn(1, Ns);
  rn = sn + awgn;

  [frn, crn] = LCDfdp(rn, 50);
  subplot(3, 3, ii); plot(crn, frn);
end
