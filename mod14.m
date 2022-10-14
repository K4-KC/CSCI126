%Script to plot range against angle (projectile launched at ground level,
% toward a cliff)

clear;
clc;

g = 9.8;

disp('Plot of range (m) versus angle (0 to 90 degrees)');
h = input('Enter height (m) of cliff: ');
dist = input('Enter distance (m) to the cliff: ');
v = input('Enter the initial velocity (m/s): ');

for i = 1:91
    angles(i) = i-1;
    v0x = v*cosd(angles(i)) + 1e-6;
    v0y = v*sind(angles(i));
    t_to_cliff = dist/v0x;
    y = v0y*t_to_cliff - (g*t_to_cliff^2)/2;
    if(y < 0)
        ranges(i) = range2(v, angles(i), 0);
    elseif(y < h)
        ranges(i) = dist;
    else
        ranges(i) = range2(v, angles(i), h);
    end
end

plot(angles,ranges);
grid on;
title('Projectile Fired Towards a Cliff');
xlabel('Angle of Projectile (degrees)');
ylabel('Range (m)');
ylim([0 90]);

[max_r, max_i] = max(ranges);
disp('  Max Range  Angle');
disp([max_r, angles(max_i)]);
