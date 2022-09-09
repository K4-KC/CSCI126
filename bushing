function res = bushing(r_outer, r_inner, h, density)
%Input r_outer, r_inner, h and density of a bushing
%Returns row vector with surface area, volume and mass

SA = 2*(pi*(r_outer^2 - r_inner^2)) + 2*pi*h*(r_inner + r_outer);
vol = pi*h*(r_outer^2 - r_inner^2);
mass = vol*density;

res(1,1) = SA;
res(1,2) = vol;
res(1,3) = mass;
end
