clc
clear

day = input('Enter the day: ');
pay = 0.01;

for i = 1:day-1
    pay = 2*pay;
end

pay
