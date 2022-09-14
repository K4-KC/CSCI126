function avg = avg_row(X)
%This function takes the average of each of the rows of a 3x3 matrix
%and outputs a matrix with the average values in the respective rows.
%avg_row(X) where X is the matrix.

avg(1,1) = sum(X(1,:))/3;
avg(2,1) = sum(X(2,:))/3;
avg(3,1) = sum(X(3,:))/3;
end
