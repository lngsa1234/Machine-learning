
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

% t=0.8
t=0.8;
Yp=localWLR(X,Y,t);
plot(X,Y,'o',X,Yp);

