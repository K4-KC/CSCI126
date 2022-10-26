clc
clear

%Using fplot and fzero

fplot(@(x) x*tan(x) - 0.4,[0,15])
grid on

fzero(@(x) x*tan(x) - 0.4,[0.5 1.0])
ans*tan(ans) - 0.4

fzero(@(x) x*tan(x) - 0.4,[3.0 3.5])
ans*tan(ans) - 0.4

fzero(@(x) x*tan(x) - 0.4,[5 6.5])
ans*tan(ans) - 0.4


%Using roots and polyval

p = [7, -4, 0, 1];

r = roots(p)

polyval(p, r)
