function A = Y_dot( x, y )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    G = 6.674287*10.^(-11);
    M = 1.9891*10.^30;
    % xp = 8.76656*10^14;
    % yp = 0;
    GM = G*M; %[m^3/(kg*s^2)]
    c1UA_to_m = 14960*10^11; %[m]
    c1mUA_to_m = c1UA_to_m/1000; %[m]
    c1Ano_to_s = 3600*24*365; %[s]
    GM = GM*c1Ano_to_s^2/c1mUA_to_m^3; %[UA^3/(kg*Ano^2)]
    xp = 586; %[mUA]
    yp = 0;
    vpy = 70.56; %[m/s]
    vpy = vpy * c1Ano_to_s/c1mUA_to_m ;%[mUA/Ano]
    vpx = 0;
    r = x.^2 + y.^2;
    rp = xp.^2 + yp.^2;
    if (y == 0 && x == 0)
        A = [
            vpx;
            vpy;
            -GM/sqrt(rp^3);
            0
            ];
    else
        A = [
            -GM*r/sqrt(r^3)+GM*rp/sqrt(rp^3) + vpx;
            -GM*r/sqrt(r^3)+GM*rp/sqrt(rp^3) + vpy;
            -GM*x/sqrt(r^3);
            GM*y/sqrt(r^3)
            ]

    end

end

