no = importdata('55d_bias.mat'); %Import data from simulink

n = 1:500;

plot(m,no(2,n), 'color', 'blue'); %plot of response with w_1
xlabel('time'); ylabel('angle on compass');
axis([0 500 -10 20]);
grid on;

legend('Estimated bias to the rudder angle'    );

