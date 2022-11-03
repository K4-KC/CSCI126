clc
clear

angles = linspace(0,4*pi,1001);
C = cos(angles);
S = sin(angles);

subplot(3,1,1);
plot(angles,S);
grid on;
title("sin");

subplot(3,1,2);
plot(angles,C);
grid on;
title("cos");

subplot(3,1,3);
plot(angles,S/C);
grid on;
title("sin/cos");
x_label("radians");