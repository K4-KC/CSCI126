clc
clear

angles = linspace(0,4*pi,1001);
C = cos(angles);
S = sin(angles);
S2 = sin(2*angles);

subplot(2,1,1);
plot(angles,S2);
grid on;
title("sin(2x)");

subplot(2,1,2);
plot(angles,2*S.*C);
grid on;
title("2sin(x)cos(x)");
xlabel("radians");
