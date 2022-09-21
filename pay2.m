clc
clear

day = input('Enter the day: ');
pay = 0.01;
total_pay = pay;

for i = 1:day-1
    pay = 2*pay;
    total_pay = total_pay + pay;
end

pay
total_pay
