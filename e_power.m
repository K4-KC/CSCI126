function sum = e_power(x)
%This function calculates e^x using infinite series
%e_power(x)

format long;
sum = 0;
for i = 0:19
    sum = sum + (x^i)/fact(i);
end

end
