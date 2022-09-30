clc
clear

%t = [0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180];
%v = [4.5,4.8,5.2,5.6,6.0,6.4,6.6,7.4,8.0,9.0,9.3,9.9,9.9,...
%8.8,6.0,5.0,2.8,1.0,0.5];

t = [0,0.25,0.50,0.75,1,1.25,1.50,1.75,2,2.250,2.50,2.75,3,3.25,3.50,...
3.75,4,4.25,4.50,4.75,5,5.250,5.50,5.75,6,6.25,6.50,6.75,7,7.25,...
7.50,7.75,8,8.25,8.5,8.75,9,9.25,9.50,9.75,10];

v = [1,0.968,0.877,0.731,0.540,0.3159,0.070,-0.178,-0.416,-0.628,-0.801,...
-0.924,-0.989,-0.994,-0.936,-0.820,-0.653,-0.4460,-0.210,0.037,0.283,...
0.512,0.708,0.861,0.960,0.999,0.976,0.893,0.753,0.567,0.346,0.103,...
-0.145,-0.385,-0.602,-0.780,-0.911,-0.984,-0.997,-0.947,-0.839];

subplot(2,1,1);
plot(t,v);
grid on;
title('Velocity');
xlabel('t (s)');
ylabel('v (m/s)');

d(1) = 0;

for n = 2:length(t)
    d(n) = d(n-1) + (v(n) + v(n-1))*(t(n) - t(n-1))/2;
end

subplot(2,1,2);
plot(t,d);
grid on;
title('Displacement');
xlabel('t (s)');
ylabel('d (m)');

total_area = d(length(t))