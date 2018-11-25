no = importdata('55d_rudder_no.mat'); %Import data from simulink
ff = importdata('55d_rudder_ff.mat'); %Import data from simulink

n = 1:500;
m = n;



plot(m,ff(2,m), 'color', 'red'); %plot of response with w_2
xlabel('time'); ylabel('angle on compass');


hold on;

plot(m,no(2,n), 'color', 'blue'); %plot of response with w_1
xlabel('time'); ylabel('angle on compass');
axis([0 500 -40 40]);

legend('\delta without feed forward', '\delta with feed forward'    );

