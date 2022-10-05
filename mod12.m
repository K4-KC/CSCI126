clc
clear

V = input('Enter the required volume (m^3): ');
min_R = input('Enter the minimum radius (m): ');
max_R = input('Enter the maximum radius (m): ');

for i = 1:100
    R(i) = min_R + (max_R - min_R)*(i-1)/99;
    H(i) = V/(pi*R(i)^2);
    A(i) = 2*pi*R(i)^2 + 2*pi*R(i)*H(i);
end

plot(R,A);
grid on;
xlabel('radius of can');
ylabel('area of can');

min_A = A(1);
index = 1;

for i = 1:100
    if(A(i) < min_A)
        min_A = A(i);
        index = i;
    end
end

min_A
radius = R(index)
height = H(index)
