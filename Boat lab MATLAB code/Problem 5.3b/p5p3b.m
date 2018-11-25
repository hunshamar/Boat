

%Constants

K_pd = 0.8362;
T_d = 72.5216;
T_f = 8.39;
psi_r = 30;

%Plotting
compass = importdata('53b_compass.mat'); %Import data from simulink
rudder = importdata('53b_rudder.mat'); %Import data from simulink
reference = importdata('53b_ref.mat'); %Import data from simulink

n=1:length(compass(2,:));

plot(n,compass(2,n), 'color', 'r'); %Plot compass
hold on;
plot(n,rudder(2,n), 'color', 'b'); %Plot rudder
hold on;
plot(n,reference(2,n), 'green--'); %Plot reference

xlabel('time'); ylabel('angle');
legend('compass', 'rudder', 'reference');
axis([0 800 -20 40]);

