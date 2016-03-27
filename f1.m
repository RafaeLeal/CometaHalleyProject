function [ ax, ay ] = f1( x, y )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    G = 6.674287*10.^(-11);
    M = 1.9891*10.^30;
    r = x.^2 + y.^2;
    xp = 8.76656*10^14;
    yp = 0;
    vpy = 70.56;
    vpx = 0;
    rp = xp.^2 + yp.^2; 
    
    if(r == 0)
        ax = -G*M/sqrt(rp^3);
        ay = 0;
    end
    ax = G*M*x/sqrt(r^3);
    ay = G*M*y/sqrt(r^3);

end

