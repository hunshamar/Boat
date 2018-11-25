%% Code for plotting rudder angle and estimated bias together in one figure %%

no = importdata('53_rudder.mat'); %Import data from simulink
ff = importdata('53_rudderbias.mat');

m=1:0.1:length(no)/10;
n = 1:0.1:length(ff)/10;

plot(m,no(2,1:length(m)), 'r');
hold on;
grid on;
plot(n,ff(2,1:length(n)),'b');
xlabel('time');
ylabel('angle');
axis([0 500 -60 60]);
title('rudder angle \delta and estimated rudder bias b with estimated heading in feedback');
legend('rudder angle \delta', 'estimated rudder bias b');