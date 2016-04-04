clear all
close all
perihelio = 587; % [mUA]
aphelio = 35110; % [mUA]
semimajor = 17850; % [mUA]
%Discretiza��o do tempo
t0 = 0;
tf = 85000000;
n = 2000000;
%n = 200000;
dt = (tf - t0)/n;
t = t0:dt:tf;
%Valores Iniciais 
%u1 = x
%u2 = vx
%v1 = y
%v2 = vy
%Y_0 = [x, vx, y, vy]
%Y_0  = [10; 0; 0; 1] % Teste
Y_0 = [587; 0; 0; 0.0115]
all_Y(:, 1) = Y_0
Y = Y_0;
for i = 1:n
    %all_Y(:, i+1) = all_Y(:, i) + dt*Y_dot2(Y(1), Y(2), Y(3), Y(4));
    all_Y(:, i+1) = all_Y(:, i) + dt*Phi_RungeKutta2(Y, dt);
    Y = all_Y(:,i+1);
end
figure
subplot(3, 2, [1 2]);
plot(all_Y(1, :), all_Y(3, :));
title('Orbita');

subplot(3, 2, 3);
plot(t, all_Y(1, :));
title('x(t)');

subplot(3, 2, 4);
plot(t, all_Y(3, :));
title('y(t)');

subplot(3, 2, 5);
plot(t, all_Y(2, :));
title('vx(t)');

subplot(3, 2, 6);
plot(t, all_Y(4, :));
title('vy(t)');