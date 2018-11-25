freq = importdata('wave.mat');

F_s = 10;
window = 4096;
noverlap = [];
nfft = [];

[pxx,f] = pwelch(freq.*(pi/180),window,noverlap,nfft,F_s);

