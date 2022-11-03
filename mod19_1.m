clc
clear

angles = linspace(0,4*pi,1001);
C = cos(angles);
S = sin(angles);

subplot(3,1,1);
plot(angles,C^2);
grid on;
title("cos^2");

subplot(3,1,2);
plot(angles,S^2);
grid on;
title("sin^2");

subplot(3,1,3);
plot(angles,C^2+S^2);
grid on;
title("sin^2 + cos^2");
x_label("radians");