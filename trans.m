function Y = trans(X)
%This function transposes a matrix
%of size 3x3 given by the user.
%trans(X) where X is the matrix.

Y(:,1) = X(1,:);
Y(:,2) = X(2,:);
Y(:,3) = X(3,:);
end
