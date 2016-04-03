clear all
close all
% Physical Constants
G = 6.672e-11; % Gravitational Constant (Newton meters^2 kilograms^-2)
Mp = 5.974e24; % Mass of the Planet Earth (kilograms)
MAX_ITERATION = 3e4; % Largest number of iterations
% Initial Conditions
dt = 10; % increment (seconds)
r = 20e6; % initial radius (meters)
theta = 0; % initial angle (radians)
V_r = 0.00e3; % r-component of velocity (meters/second)
V_theta = 5.00e3; % theta-component of velocity (meters/second)
% Convert to Discrete Conditions
dr = V_r*dt; % meters
dtheta = V_theta/r*dt; % radians
% Initialize values for looped calculation
r_0 = r;
theta_0 = theta;
all_theta = theta;
all_r = r;
while abs(theta-theta_0) <= 2*pi && length(all_theta) < MAX_ITERATION,
% compute new state information
 r_new = r + dr;
 theta_new = theta + dtheta;
 dr_new = dr + ((r+0.5*dr)*dtheta^2 - G*Mp/(r^2)*(dt^2));
 dtheta_new = dtheta - (2*dr*dtheta/(r+0.5*dr));

% save and print new state information
 all_theta = [all_theta; theta_new ];
 all_r = [all_r; r_new ];

% reset variables for new calculation
 r = r_new; dr = dr_new;
 theta = theta_new; dtheta = dtheta_new;
end;
% Convert polar coordinates to Cartesian (X-Y) coordinates (helps with
% eccentricity calculation)
[X,Y] = pol2cart(all_theta,all_r);
% eccentricity and period calculations
N = length(all_r);
opp_lengths = zeros(1,floor(N/2));
for k=1:floor(N/2)
 opp_lengths(k) = sqrt((X(k)-X(floor(N/2)+k))^2 + (Y(k)-Y(floor(N/2)+k))^2);
end
ecc = sqrt(1-(min(opp_lengths)/max(opp_lengths))^2);
% NOTE: using min(all_r) and max(all_r) may not yield accurate value for
% eccentricity as the major/minor axis does not necessarily cross the
% origin
if(length(all_theta) < MAX_ITERATION)
 Period = dt*length(all_theta); % unit in seconds (same as unit of dt)
else
 error('dt value is possibly too coarse, try a different value');
end
figure(1), polar( all_theta, all_r/1000, 'r.' );
title( sprintf('Orbit (r=%1.0fkm, \\theta=%1.0f\\circ, V_r =%1.1fkm/s, V_{\\theta}=%1.1fkm/s', r, thetha, V_r, V_theta))