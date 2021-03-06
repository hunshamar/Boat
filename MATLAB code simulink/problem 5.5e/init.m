
w_0 = 0.7823;
w_c = 0.10; 
K = 0.1561; 
T = 72.5216;

K_pd = 0.8362;
T_d = 72.5216;
T_f = 8.39;
psi_r = 30;

lambda = 0.09;
sigma = 0.02814;
K_w = 2*lambda*w_0*sigma;
T_s = 0.10;

A = [0 1 0 0 0;
     -w_0^2 -2*lambda*w_0 0 0 0;
     0 0 0 1 0;
     0 0 0 -1/T -K/T;
     0 0 0 0 0;];
B = [0; 0; 0; K/T; 0];

E = [0 0; K_w 0; 0 0; 0 0; 0 1];

C = [0 1 1 0 0];
