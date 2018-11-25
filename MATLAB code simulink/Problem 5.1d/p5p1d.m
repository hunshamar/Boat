model = importdata('51dm.mat'); %Import data from simulink
system = importdata('51ds.mat'); %Import data from simulink

n=1:length(model(2,:));

K = 0.1561;
T = 72.5216;

plot(n,system(2,n), 'color', 'r'); %Plot boat system step response
hold on;
plot(n,model(2,n), 'color', 'b'); %Plot model step response

xlabel('time'); ylabel('angle on compass');
legend('Step response of ship', 'step response of mathematical model');
axis([0 5000 0 500]);


