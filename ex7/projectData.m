function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);
%size(Z) % 50 x 1 matrix
%size(U) % 2 x 2 matrix
%size(X) % 50 x 2 matrix
%K % 1
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%


% K x n matrix multiplied by n x m matrix
%Z = U(:,1:K)' * X'; % 1 x 50 matrix (projection for all 50 examples)
%Z = U(:,1:K)' * X';

U_reduce = U(:, 1:K);
Z = X * U_reduce; % ORDER OF U and X matters!!

% =============================================================

end
