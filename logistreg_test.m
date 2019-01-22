%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Authors: Ling Wang
%%Date: 11/29/2015
% Function: fit a set of data by logistic regression
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% read data
X=load('input.dat');
t=load('output.dat');

% implement logistic regression
[n,m]=size(X);
X=[ones(n,1) X];
w=logistreg(X,t);

%decision boundary [1 z1 z2]*w'=0
X1=X(:,2);
Z1=[min(X1) max(X1)];
Z2=-(w(1)+Z1*w(2))/w(3);

% display 
disp('The coefficients w is:')
disp(w)
plot(X(t==1,2),X(t==1,3),'rx')
hold on
plot(X(t==0,2),X(t==0,3),'bo')
hold on
plot(Z1,Z2)
title('Logistic Regression');
xlabel('x1');
ylabel('x2');
hold off


