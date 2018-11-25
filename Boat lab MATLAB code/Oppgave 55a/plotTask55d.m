no = importdata('Plot55da.mat'); %Import data from simulink
ff = importdata('Plot55db.mat'); %Import data from simulink

reference = importdata('55d_ref.mat'); %Import data from simulink


m= 1:500;
n = m;
plot(n,reference(2,n), 'green--'); %Plot reference

hold on;


plot(m,ff(2,m), 'color', 'blue'); %plot of response with w_2
xlabel('time'); ylabel('angle on compass');
axis([0 500 0 35]);

hold on;

plot(m,no(2,n), 'color', 'r'); %plot of response with w_1
xlabel('time'); ylabel('angle on compass');
axis([0 500 0 35]);

legend('Reference', 'With feed forward', 'Without feed forward', 'Location', 'east');

