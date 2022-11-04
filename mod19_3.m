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
%C(126) = 0;
t=S./C;
plot(angles,t);
grid on;
title("sin/cos");
xlabel("radians");
ylim([-4,4]);
