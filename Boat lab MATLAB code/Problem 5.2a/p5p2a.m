samples = importdata('wave.mat');

F_s = 10;
window = 4096;

[pxx,f] = pwelch(samples(2,:).*(pi/180), window, [], [], F_s);

%% converting from degrees to radians %%
omega = 2*pi.*f;
pxx = pxx./(2*pi);

%% plotting %% 
plot(omega,pxx);
grid on;
xticks([ 0 pi/8 pi/4 3*pi/8 pi/2 5*pi/8 3*pi/4 7*pi/8 pi])
xticklabels({'0','\pi/8','\pi/4','3\pi/8', '\pi/2', '5\pi/8', '3\pi/4', '7\pi/8', 'pi'})
xlabel('frequency (rad)');
ylabel('power density estimate');
axis([0 pi-0.5 0 0.0009]);
hold on;

