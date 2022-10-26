function r = range2_roots(v, angle, s)
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

r = roots([a b c]);

t = max(r);

r = t * v0x;
end
