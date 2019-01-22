
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%AUTHORS: Ling Wang
%DATA:    11/10/2015
%FUNCTION: test Locally weighted linear regression function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

infile=fopen('hwk3x.dat','r');
X=fscanf(infile,'%f');

outfile=fopen('hwk3y.dat','r');
Y=fscanf(outfile,'%f');

Nx=size(X);
Ny=size(Y);

%sort x
[X,index]=sort(X);
Y=Y(index);

subplot(2,2,1)
% t=0.1
t=0.1;
Yp=localWLR(X,Y,t);
plot(X,Y,'o',X,Yp);
title('t=0.1');

subplot(2,2,2)
% t=0.3
t=0.3;
Yp=localWLR(X,Y,t);
plot(X,Y,'o',X,Yp);
title('t=0.3');

subplot(2,2,3)
% t=2
t=2;
Yp=localWLR(X,Y,t);
plot(X,Y,'o',X,Yp);
title('t=2');

subplot(2,2,4)
% t=10
t=10;
Yp=localWLR(X,Y,t);
plot(X,Y,'o',X,Yp);
title('t=10');