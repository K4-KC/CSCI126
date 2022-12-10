function b = lin_solve(a, c)

%Inputs are two matrices a and b representing a set of linear equations
%If a solution exists it will be returned, else a user-friendly message will be returned.

if(size(a)(1) ~= size(c)(1) || size(c)(2) ~= 1)
    b = 'This wont work, you baboon.';
else
    b = inv(a)*c;
end
end
