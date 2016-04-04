%c1UA_to_m = 14960*10^11; %[m]/[UA]
c1UA_to_m = 1.4960*10^11; %[m]/[UA]
c1mUA_to_m = c1UA_to_m/1000; %[m]/[mUA]
c1Ano_to_s = 3600*24*365; %[s]/[Ano]
perihelio = .587; % [UA]
aphelio = 35.110; % [UA]
semimajor = 17.850; % [UA]

G = 6.674287*10.^(-11); %[m^3]/[kg][s^2]
M = 1.9891*10.^30; %[kg]
GM = G*M;
GM = GM/c1UA_to_m^3; %[UA^3]/[s^2]
GM = GM*c1Ano_to_s^2; %[UA^3]/[Ano^2]
GM

%GM = 0.0394348259562330; % [mUA^3]/[Ano^2]

a = semimajor;
r = perihelio;
v = sqrt((GM/a)*(((2*a)/r)-1));

