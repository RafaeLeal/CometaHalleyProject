t0 = 0;
tf = 1000;
n = 100;
dt = (tf - t0)/n;
G = 6.674287*10.^(-11);
M = 1.9891*10.^30;
Y = zeros(4, n);

xp = 8.76656*10^14;
yp = 0;
vpy = 70.56;
vpx = 0;
Y(:, 1) = [ xp; yp; vpx; vpy];

for i = 1:n
    Y(:, i+1) = Y(:, i) + dt*Phi_RungeKutta(Y(:, i),dt);
end
