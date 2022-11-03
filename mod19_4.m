clc
clear

x = linspace(-5,5,100);
pol = [1 0 -5 0];
y1 = polyval(pol,x);
y2 = x^3 - 5*x;

subplot(2,1,1);
plot(x,y1);
grid on;
title("Using polyval");

subplot(2,1,2);
plot(x,y2);
grid on;
title("Using equation");