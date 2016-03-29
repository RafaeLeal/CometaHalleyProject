clc;
t0 = 0;
tf = 70;
n = 100;
dt = (tf - t0)/n;
G = 6.674287*10.^(-11);
M = 1.9891*10.^30;
Y = zeros(4, n);
GM = G*M ;%[m^3/(kg*s^2)]
c1UA_to_m = 14960*10^11; %[m]
c1mUA_to_m = c1UA_to_m/1000; %[m]
c1Ano_to_s = 3600*24*365; %[s]
GM = GM*c1Ano_to_s^2/c1mUA_to_m^3 ;%[UA^3/(kg*Ano^2)]

% xp = 8.76656*10^14;
% yp = 0;

xp = 586; %[mUA]
yp = 0;
vpy = 70.56; %[m/s]
vpy = vpy * c1Ano_to_s/c1mUA_to_m ;%[mUA/Ano]
vpx = 0;
Y(:, 1) = [ xp; yp; vpx; vpy];

for i = 1:n
    Y(:, i+1) = Y(:, i) + dt*Phi_RungeKutta(Y(:, i),dt);
end
