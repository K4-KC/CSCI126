clc
clear

a = [5 0 -75 20 120]
b = [1 -2 -13 14 24]
c = [1 2]
d = [2 0 3]

disp('Find d/c');

[q r] = deconv(d,c)

disp('Find c*d');

conv(c,d)

disp('Find partial fraction expansion of a/b');

[r p k] = residue(a,b)

disp('Find roots of b');

roots(b)

disp('Evaluate b at its roots');

polyval(b,ans)

x = linspace(-3,4,10000);
y = polyval(a,x);

subplot(2,1,1);
plot(x,y);
grid on;
title("plot of the 'a' polynomial");

x = linspace(-3,4,10000);
y = polyval(b,x);

subplot(2,1,2);
plot(x,y);
grid on;
title("plot of the 'b' polynomial");
