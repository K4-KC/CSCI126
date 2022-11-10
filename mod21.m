clc;
clear;
clf;

load expdata;

R = 8;
L = 0.25e-3;
C = 4.7e-6;
w = logspace(3,6,100);

Tc = -(w.^2.*R.*L.*C)./(R - w.^2.*R.*L.*C + j*w.*L);
T = abs(Tc);
angT = angle(Tc)*180/pi;

wx = Module21data(1,:);
Tx = Module21data(2,:);
angx = Module21data(3,:);

subplot(2,1,1);
semilogx(w,T, wx, Tx, 'r.','MarkerSize',10);
legend('Theoretical','Experimental');
title(['Tweeter R = ',num2str(R), '   L = ', num2str(L), '   C = ', num2str(C)]); 
ylabel("|Vo/Vin|");
grid on;

subplot(2,1,2);
semilogx(w,angT, wx, angx, 'r.','MarkerSize', 10);
legend('Theoretical','Experimental'); 
xlabel('Frequency (rads/s');
ylabel("Angle");
ylim([0,180]);
grid on;

[max_magnitude, i] = max(T);
max_magnitude
max_magnitude_w = w(i)
max_magnitude_phase = angT(i)
