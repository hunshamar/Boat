%% code for plotting estimated and actual heading together %% 

no = importdata('53e_compass.mat'); %Import data from simulink
ff = importdata('53e_estimatedHeading.mat');
plot(1:0.1:length(no)/10,no(2,1:length(1:0.1:length(no)/10)), 'r');
hold on;
plot(1:0.1:length(ff)/10,ff(2,1:length(1:0.1:length(ff)/10)), 'b');
grid on;
title('Actual and estimated wave heading');
 axis([0 500 0 40]);
xlabel('time');
ylabel('travel angle');
legend('Actual compass course', 'estimated heading');
hold off;