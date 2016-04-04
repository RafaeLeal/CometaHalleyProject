function ANS = Y_dot2(u1, u2, v1, v2)
        
        GM = 0.0394348259562330; % [mUA^3]/[Ano^2]
        %GM = 10; %Teste
        r = sqrt(u1^2+v1^2);
        a = [-GM*u1/r^3 , -GM*u1/r^3];
        ANS = [
            u2;         %u1_dot = u2
            -GM*u1/r^3;  %u2_dot
            v2;         %v1_dot = v2
            -GM*v1/r^3;  %v2_dot
            ];


end

