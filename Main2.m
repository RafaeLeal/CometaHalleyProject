clear all
close all
perihelio = 587; % [mUA]
aphelio = 35110; % [mUA]
semimajor = 17850; % [mUA]
%Discretiza��o do tempo
t0 = 0;
tf = 100;
%n = 20000; %test
n = 100000;

dt = (tf - t0)/n;
t = t0:dt:tf;
%Valores Iniciais 
%u1 = x
%u2 = vx
%v1 = y
%v2 = vy
%Y_0 = [x, vx, y, vy]
%Y_0  = [10; 0; 0; 1] % Teste

v_0 = 11.4957092643945 %[UA/Ano]
Y_0 = [.587; 0; 0; v_0]
all_Y(:, 1) = Y_0
Y = Y_0;
for i = 1:n
    all_Y(:, i+1) = all_Y(:, i) + dt*Phi_RungeKutta2(Y, dt);
    Y = all_Y(:,i+1);
end
t_spline = t0:dt/3:tf;
x = spline(t, all_Y(1, :), t_spline);
vx = spline(t, all_Y(2, :), t_spline);
y = spline(t, all_Y(3, :), t_spline);
vy = spline(t, all_Y(4, :), t_spline);
figure
subplot(3, 2, [1 2]);
plot(all_Y(1, :), all_Y(3, :));
title('Orbita');

subplot(3, 2, 3);
%plot(t, all_Y(1, :), '-.b', t_spline, x, '-r');
plot(t, all_Y(1, :));
title('x(t)');

subplot(3, 2, 4);
plot(t, all_Y(3, :), 'b:', t_spline, y, 'r-');
title('y(t)');

subplot(3, 2, 5);
plot(t, all_Y(2, :), ':', t_spline, vx, '-');
title('vx(t)');

subplot(3, 2, 6);
plot(t, all_Y(4, :), ':', t_spline, vy, '-');
title('vy(t)');