function[w]=logistreg(X,t)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Authors: Ling Wang
%Date:11/29/15
%Function: implement logistic regression
%   w_n=w_o-H^-1*del_E=(Q'*R*Q)^-1Q'*R*z
%   z=Q*w_o-R^-1*(y-t)
% where 
%   del_E=Q'*(y-t)
%   H=Q'*R*Q
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%input date
[n,m]=size(X);   % m data dimension.
Q= X;           % feature matrix

%initialize wo
w_o=zeros(m,1);

%update w iteratively
T=10;
for i=1:T
    a=Q*w_o;
    y=1./(1+exp(-a));
    r=y.*(1-y);
    R=diag(r);
    z=Q*w_o-R\(y-t);
    w_n=(Q'*R*Q)\(Q'*R*z); 
    if(abs(w_n-w_o)<0.001)
     w_o=w_n;
     break;
    end
     w_o=w_n;
end
w=w_o;

