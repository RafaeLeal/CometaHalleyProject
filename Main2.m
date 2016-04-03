clear all
close all
t0 = 0;
tf = 100;
n = 300;
dt = (tf - t0)/n;
%u1 = x
%u2 = vx
%v1 = y
%v2 = vy

Y_0  = [10; 0; 0; 1]
all_Y(:, 1) = Y_0
Y = Y_0;
for i = 1:n
    all_Y(:, i+1) = all_Y(:, i) + dt*Y_dot2(Y(1), Y(2), Y(3), Y(4));
    Y = all_Y(:,i+1);
end
plot(all_Y(1, :), all_Y(3, :));