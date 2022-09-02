function ret = weight_per_leg(diag, L, n)
%This function determines the weight per support leg for a conical water
%tank. Inputs are diam (ft), length of side (ft), and the number of legs.
%Returned value is the weight supported by each leg.
%weight_per_leg(diam, length, number of legs)
den = 62.4;
h = sqrt(L^2 - (diag/2)^2);
weight = pi * (diag/2)^2 * h / 3 * den;
ret = weight / n;
end
