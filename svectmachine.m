%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Authors: Ling Wang
%Date: 11/16/2015
%Function: obtain the decision boundary by implementing 'support vector
%          machine'
%Stepes:
%       1, obtain QP standard form by training set
%        min 1/2X'Hx+f'X
%        subject to
%             Ax<=b;
%             Aeqx=beq;
%
%       2. call Quadracti progrmming function
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N=7;
x=[1 1.5 2.5 3 4 4.5 5];
y=[-1 -1 -1 1 1 1 1];

Z=Y.*X;
H=Z'*Z;

%prepare standard form
% set C=50
f=-1*ones(N,1);
Aeq=y;
beq=0;
lb=zeros(N,1);
ub=100*ones(N,1);

% call optimization solver
% x = quadprog(H,f,A,b,Aeq,beq,lb,ub)
alpha=quadprog(H,f,[],[],Aeq,beq,lb,ub)

% y(wx+b)>=1
w=alpha'*Z';
for i=1:N
    if(alpha(i)>0.01)
        b=1/y(i)-w*x(i)
        break;
    end
end

%print
fprintf('w=%d\n', w);
fprintf('b=%d\n', b);

%boundary wx+b=0
y=w*x+b;
plot(x,y)
ylim([-8 10]);
hold on
plot(2.5,0,'ro');
hold on
plot(3,0,'ro');
hold off