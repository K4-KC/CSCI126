function avg = avg_col(X)
%This function takes the average of each of the columns of a 3x3 matrix
%and outputs a matrix with the average values in the respective column.
%avg_row(X) where X is the matrix.

avg(1,1) = sum(X(:,1))/3;
avg(1,2) = sum(X(:,2))/3;
avg(1,3) = sum(X(:,3))/3;
end
