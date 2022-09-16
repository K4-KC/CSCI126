function r = range2(v, angle, s)
%This function calculates the range of a projectile motion
%Inputs are Velocity(m/s) and Angle(degrees) and height of cliff(meters)
%range(v, angle, height)
y = s;
g = 9.8;

v0y = v * sind(angle);
v0x = v * cosd(angle);

a = g/2;
b = -v0y;
c = y;

root1 = (-b + sqrt(b^2 - 4 * a * c)) / (2 * a);
root2 = (-b - sqrt(b^2 - 4 * a * c)) / (2 * a);

t = max([root1, root2]);

r = t * v0x;
end
