
function [idx,C]=ckmeans(X, k,p)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%AUthors: Ling Wang
%Date: 12/8/2015
%Function: implement k-means clustering
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n=size(X,1);

% intinial centroids
C=X(p,:);
%plot(C(:,1),C(:,2),'r*','Markersize',40)
%hold on
%iteration until converge
T=100;
cnt=0;
while(1)
    
    %calculate diatnce to each centroids
    D=zeros(k,n);
    for i=1:k
        for j=1:n
            D(i,j)=sqrt((C(i,1)-X(j,1))^2+(C(i,2)-X(j,2))^2);
        end
    end
    % obtain cluster group
    Q=zeros(k,n);
    [M,I]=min(D,[],1);
    for i=1:n
        Q(I(i),i)=1;
    end
    
    % recalculate centroids
    NC=zeros(k,2);
    q=zeros(k,1);
    for i=1:k
        NC(i,1)= sum(X(:,1).*Q(i,:)')/sum(Q(i,:));
        NC(i,2)= sum(X(:,2).*Q(i,:)')/sum(Q(i,:));
        q(i)=sum(Q(i,:));
    end
    
   if(abs(C-NC)<0.01)
       break;
   end
   C=NC;
   cnt=cnt+1;
end
idx=I';
cnt
q
