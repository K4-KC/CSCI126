clc 
clear
format long;

d = input('Enter the denominator: ');

term = 1;
sum = 0;
for i = 1:25
    term = term/d;
    sum = sum + term;
end

sum

format;
