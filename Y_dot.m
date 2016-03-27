function A = Y_dot( x, y )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    G = 6.674287*10.^(-11);
    M = 1.9891*10.^30;
    xp = 8.76656*10^14;
    yp = 0;
    vpy = 70.56;
    vpx = 0;
    r = x.^2 + y.^2;
    rp = xp.^2 + yp.^2;
    if (y == 0 && x == 0)
        A = [
            vpx;
            vpy;
            -G*M/sqrt(rp^3);
            0
            ];
    else
        A = [
            -G*M*(r)/sqrt(r^3)+G*M*rp/sqrt(rp^3) + vpx;
            -G*M*(r)/sqrt(r^3)+G*M*rp/sqrt(rp^3) + vpy;
            G*M*x/sqrt(r^3);
            G*M*y/sqrt(r^3)
            ];

    end

end

