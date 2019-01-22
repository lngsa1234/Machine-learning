
function [Yp]=localWLR(X,Y,t)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%AUTHORS: Ling Wang
%DATA:    11/10/2015
%FUNCTION: Locally weighted linear regression with Gaussion Kernal function
%          as weight function; the weight matrix is different for any input
%          point.
%
%        wi(x)=exp(-(x-xi)^2/2t^2)
%input: 
%     X Nx1 data
%     Y Nx1 data
%     t parameter for weighted function
%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N=size(Y,1);
Yp=zeros(N,1);

% add one column with all 1s
 Xp=[ones(N,1) X];
 
% Local weighetd linear regression
for i=1:N
    W=zeros(N,N);
    for j=1:N
        W(j,j)=exp(-(X(i)-X(j))^2/(2*t^2));
    end
    p=Xp'*W*Xp\(Xp'*W*Y);
    Yp(i)=Xp(i,:)*p;
end

