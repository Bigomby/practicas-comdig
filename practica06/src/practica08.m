clear all
close all

L = 4;
M1 = 4;
M2 = 8;
Eb = 4;
Nb = 1e4;
L = 4;

M = M1 * M2;
K = log2(M);
Ns = Nb/K;

s1 = ones(1, L);
s2 = [ones(1, L/2) -ones(1,L/2)];

Bn = randi([0 1], 1, Nb);

[Xn, Bnc, Bns, Ac, As, phi1,phi2] = transmisorqam(Bn, Eb, M1, M2, s1, s2, L);

% Demodulo usando correladores
Xn_reordenada = reshape(Xn, L, Ns);
sn1 = phi1 * Xn_reordenada;
sn2 = phi2 * Xn_reordenada;

SNRdb = 0:15;

for i=1:length(SNRdb)
  SNR = 10^(SNRdb(i)/10);

  varz = Eb/(2*SNR);

  zn1 = sqrt(varz)*randn(size(sn1));
  zn2 = sqrt(varz)*randn(size(sn2));

  rn1 = sn1 + zn1;
  rn2 = sn2 + zn2;

  An1 = detecta(rn1, Ac);
  An2 = detecta(rn2, As);

  Bn1 = simbolobit(An1, Ac);
  Bn2 = simbolobit(An2, As);

  Cn = une(Bn1, Bn2, M1, M2);

  Nerrores = sum(Bn ~= Cn);
  Pe(i) = Nerrores/Nb;
end

semilogy(SNRdb, Pe);