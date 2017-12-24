function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

n = size(X, 2);
m = size(X, 1);

X_norm = X;
mu = zeros(1, n);
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

% Create vector of mean values of each feature
mu = mean(X)
% Create vector with standard deviation of each feature
sigma = std(X)


for col = 1:n
    % Dont need inner loop since we can perform element-wise subtraction
    xMinusMean = X(:, col) - mu(col);
    X_norm(:, col) = xMinusMean / sigma(col);
end


% ============================================================

end
