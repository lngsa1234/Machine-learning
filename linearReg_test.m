%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Authors: Ling Wang
%Date: 11/8/2015
%Function: read data (x,y) from file and implement linear regression
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

infile=fopen('hwk3x.dat','r');
X=fscanf(infile,'%f');

outfile=fopen('hwk3y.dat','r');
Y=fscanf(outfile,'%f');

Nx=size(X,1);
Xw=[ones(Nx,1) X];
[Z,p]=linearReg(Xw,Y);
plot(X,Y,'o',X,Z)

    


