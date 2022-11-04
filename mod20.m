clc
clear

load mod_20_data

x = tvidata(1,:);
V = tvidata(2,:);
I = tvidata(3,:);

P = V.*I;

[maxP, n1] = max(P);
[minP, n2] = min(P);
avgP = mean(P);

disp(['Maximum Power Dissipated = ', num2str(maxP), ' watts at time = ', num2str(tvidata(1,n1)), ' seconds']);
disp(['Minimum Power Supplied = ', num2str(minP), ' watts at time = ', num2str(tvidata(1,n2)), ' seconds']);

subplot(2,1,1);
plot(x,V,x,I);
grid on;
legend("V(volts)","I(amps)");
title("Voltage and Current waveforms for a Complex load");

subplot(2,1,2);
plot(x,P);
grid on;
title(['Power = I*V', 'Avg Power = ', num2str(avgP)]);
xlabel("Time(sec)");
ylabel("Watts");
