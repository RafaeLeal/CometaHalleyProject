function A = Y_dot2(u1, u2, v1, v2)
        
        %G = 6.674287*10.^(-11);
        %M = 1.9891*10.^30;
        %GM = G*M ;%[m^3/(kg*s^2)]    
        GM = 10;
        r = sqrt(u1^2+v1^2);
        [-GM*u1/r^3 , -GM*u1/r^3]
        A = [
            u2;         %u1_dot = u2
            -GM*u1/r^3;  %u2_dot
            v2;         %v1_dot = v2
            -GM*v1/r^3;  %v2_dot
            ];


end

