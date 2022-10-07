clc
clear

level = input('Enter clipping level: ');

for i = 1:1001
    angle1(i) = (i-1)*4*pi/1000;
    y1(i) = sin(angle1(i));
end

for i = 1:1001
    angle2(i) = (i-1)*4*pi/1000;
    y2(i) = sin(angle2(i));
    
    if(y2(i) > level)
        y2(i) = level;
    end
    if(y2(i) < -level)
        y2(i) = -level;
    end
end

for i = 1:1001
    angle3(i) = (i-1)*4*pi/1000;
    y3(i) = sin(angle3(i));
    
    if(y3(i) > level)
        y3(i) = 0.7*level + 0.3*y3(i);
    end
    if(y3(i) < -level)
        y3(i) = -0.7*level + 0.3*y3(i);
    end
end

plot(angle1,y1,angle2,y2,angle3,y3);
grid on;
xlabel('time (seconds)');
ylabel('Volts');
