function phi = Phi_RungeKutta2(Yk, dt)
    
    k1 = Y_dot2(Yk(1), Yk(2), Yk(3), Yk(4));
    Yk2 = Yk + (dt/2)*k1;
    k2 = Y_dot2(Yk2(1), Yk2(2), Yk2(3), Yk2(4));
    Yk3 = Yk + (dt/2)*k2;
    k3 = Y_dot2(Yk3(1), Yk3(2), Yk3(3), Yk3(4));
    Yk4 = Yk + (dt/2)*k3;
    k4 = Y_dot2(Yk4(1), Yk4(2), Yk4(3), Yk4(4));

    phi = (k1+2*k2+2*k3+k4)/6;
    %phi = k1;
end

