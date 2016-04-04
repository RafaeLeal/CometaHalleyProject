x = -10 : 10;
y = 0.23*x.^3 + 0.43*x.^2 - 0.17*x + 0.45;

S = spline(x, y)
S.coefs