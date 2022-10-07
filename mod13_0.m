clc
clear

level = input('Enter clipping level: ');

for i = 1:1001
    angle(i) = (i-1)*4*pi/1000;
    y1(i) = sin(angle(i));
    
    if(y1(i) > level)
        y2(i) = level;
        y3(i) = 0.7*level + 0.3*y1(i);
    elseif(y1(i) < -level)
        y2(i) = -level;
        y3(i) = -0.7*level + 0.3*y1(i);
    else
        y2(i) = y1(i);
        y3(i) = y1(i);
    end
end

plot(angle,y1,angle,y2,angle,y3);
grid on;
xlabel('time (seconds)');
ylabel('Volts');
