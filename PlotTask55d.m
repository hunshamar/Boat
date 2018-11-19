

w_1 = importdata('51b1.mat'); %Import data from simulink
w_2 = importdata('51b2.mat'); %Import data from simulink

n=1:length(w_1(2,:));
m=1:length(w_2(2,:));

max_1 = max(w_1(2,3000:6000));
min_1 = min(w_1(2,3000:6000));
A_1 = (max_1-min_1)/2; %output amplitude for w_1

max_2 = max(w_2(2,3000:6000));
min_2 = min(w_2(2,3000:6000));
A_2 = (max_2-min_2)/2; %output amplitude for w_2


plot(m,w_1(2,n), 'color', 'm'); %plot of response with w_1
xlabel('time'); ylabel('angle on compass');
legend('\omega = 0.005', '\omega = 0.05');
axis([0 6000 0 70]);

figure();

plot(m,w_2(2,m), 'color', 'm'); %plot of response with w_2
xlabel('time'); ylabel('angle on compass');
legend('\omega = 0.005', '\omega = 0.05');
axis([0 6000 0 5]);