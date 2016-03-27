function phi = Phi_RungeKutta(Yk, dt)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    xk = Yk(1);
    yk = Yk(2);
    
    k1 = Y_dot(xk, yk)
    k1(3)
    %Yk2 = Yk + (dt/2)*k1;
    k2 = Y_dot(xk + (dt/2)*k1(1), yk + (dt/2)*k1(2));
    k2(3)
    k3 = Y_dot(xk + (dt/2)*k2(1), yk + (dt/2)*k2(2));
    k3(3)
    k4 = Y_dot(xk + (dt/2)*k3(1), yk + (dt/2)*k3(2));
    k4(3)
    %k2 = Y_dot(Yk2(1), Yk2(2));
    %Yk3 = Yk + (dt/2)*k2;
    %k3 = Y_dot(Yk3(1), Yk3(2));
    %Yk4 = Yk + (dt/2)*k3;
    %k4 = Y_dot(Yk4(1), Yk4(2));
    phi = (k1+2*k2+2*k3+k4)/6;
end

