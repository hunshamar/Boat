
%% constants %%
lambda = 0.09;
sigma = 0.02814;
omega_0 = 0.7823;
K_w = 2*lambda.*omega_0*sigma;
omega = 0:pi/100:2*pi;
%% plotting %% 
num = omega.^2*K_w^2;
den =(omega.^4 + omega_0^4 + 2*omega.^2*omega_0^2*(2*lambda.^2-1));
psd = rdivide(num,den);
hold on;
plot(omega,psd, '--');
hold on;
legend('PSD estimate', '\lambda = 1', '\lambda = 0.5', '\lambda = 0.1', '\lambda = 0.09')