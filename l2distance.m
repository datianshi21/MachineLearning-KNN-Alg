function D=l2distance(X,Z)
% function D=l2distance(X,Z)
%	
% Computes the Euclidean distance matrix. 
% Syntax:
% D=l2distance(X,Z)
% Input:
% X: dxn data matrix with n vectors (columns) of dimensionality d
% Z: dxm data matrix with m vectors (columns) of dimensionality d
%
% Output:
% Matrix D of size nxm 
% D(i,j) is the Euclidean distance of X(:,i) and Z(:,j)
%
% call with only one input:
% l2distance(X)=l2distance(X,X)
%

if (nargin==1) % case when there is only one input (X)
	%% fill in code here
    [d , n] = size(X);
    S = repmat(diag(X' * X) , 1 , n);
    G = X' * X;
    %G = innerproduct(X);
    R = repmat(diag(X' * X)' , n , 1);
    D = sqrt(S - 2 .* G + R);
else  % case when there are two inputs (X,Z)
	%% fill in code here
    [d , n] = size(X);
    [d , m] = size(Z);
    %S = repmat(diag(X' * X) , 1 , m);
    %G = X' * Z;
    %G = innerproduct(X , Z);
    %R = repmat(diag(Z' * Z)' , n , 1);
    D = sqrt(abs(repmat(diag(X' * X) , 1 , m) - 2 .* X' * Z + repmat(diag(Z' * Z)' , n , 1)));
end;
%



