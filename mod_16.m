clc
clear

disp("A spool has a diameter of 0.01 meters and a width of 0.05 meters.");
disp("This script finds the total length of wire needed to make a coil");
disp("of n layers, and the diameter of the coil after all the windings are added.");
disp("(The diameter of the wire is 0.001 meters.");
disp(' ');

n = input('Enter the layers of wire: ');

spool_width = 0.05;
spool_diam = 0.01;
diam_wire = 0.001;
loops_per_layer = spool_width / diam_wire;

coil_diam = spool_diam;
total_length_of_wire = 0;

for i = 1:n
    length_of_loop = pi*coil_diam;
    length_of_layer = length_of_loop * loops_per_layer;
    total_length_of_wire = total_length_of_wire + length_of_layer;
    coil_diam = coil_diam + 2*diam_wire;
end

total_length_of_wire
coil_diam
