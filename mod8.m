clc
clear

g = 9.8;

V0 = input('Initial velocity (m/s): ');
s = input('Elevation of impact (m): ');

for i = 1:91
    ang(i) = i - 1;
    r(i) = range2(V0,i-1,s);
end

[max_r, max_i] = max(r);
disp('  Max Range  Angle');
disp([max_r, max_i-1]);

plot(ang,r)
grid on
xlabel('angle of projectile (degrees)');
ylabel('range (m)');
