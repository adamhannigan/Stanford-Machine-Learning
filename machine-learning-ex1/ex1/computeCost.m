function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% Get the hypothesis outcome for each input
predictions = X * theta;
% Calculate the hypothesis
Hx = (predictions - y);
% Add together all of the calculations
sumOfAll = sum(Hx.^2);
% Now apply fraction that equalizes result
J = 1/(2 * m) * sumOfAll;



% =========================================================================

end
