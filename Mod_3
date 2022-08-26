clc
clear

disp('Find range of projectile (max_x) and the maximum height (max_y)')
v = input('Enter initial velocity in m/s: ');
angle = input('Enter angle in degrees: ');

y = 0;
g = 9.8;

v0y = v * sind(angle);
v0x = v * cosd(angle);

a = g/2;
b = -v0y;
c = y;

root1 = (-b + sqrt(b^2 - 4 * a * c)) / (2 * a);
root2 = (-b - sqrt(b^2 - 4 * a * c)) / (2 * a);

t = max([root1, root2]);

max_x = t * v0x
max_y = v0y * t / 2 - a * (t / 2)^2

disp('Kanva')
