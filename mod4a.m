clc
clear

disp("This is a script to solve a quadratic with real roots")
a = input('Enter the a value: ');
b = input('Enter the b value: ');
c = input('Enter the b value: ');

d = sqrt(b^2 - 4*a*c);
x1 = (-b + d)/(2*a);
x2 = (-b - d)/(2*a);

disp("    X1        X2")
disp([x1 x2])

disp('Kanva')
