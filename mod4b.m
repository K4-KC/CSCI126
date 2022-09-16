clc
clear

disp('Script to solve system of linear equations')
D = input('Enter the D matrix: ');
C = input('Enter the C matrix: ');

X = inv(D)*C;

disp('The solutions are: ')
disp(X)

disp('Kanva')
