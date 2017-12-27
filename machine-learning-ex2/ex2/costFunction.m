function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

numberOfFeatures = length(theta);

for featureIndex = 1:numberOfFeatures

end

% dont need to transpose since theta in that format
% REMEBER order matters
hypothesis = sigmoid(X * theta);

positivePrediction = -y' * log(hypothesis);
negativePrediction = (1 - y)' * log(1 - hypothesis);

% if we are looking for positives (y = 1) only the postive prediction will run
% if y = 0 only negative prediction will run
logisticPrediction =  positivePrediction - negativePrediction;
% dont need sum/iterations since equation is vectorized
J = (1 / m) * logisticPrediction;

% Vectorized
grad = (1 / m) * (X'*(hypothesis - y));






% =============================================================

end
