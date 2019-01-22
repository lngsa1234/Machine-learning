%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Authors: Ling Wang
%Date:11/30/2015
%Function: cluster a random network via K-means algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%generate a random network with density la.
la=1;
L=10;
N=floor(la*100);
point= unifrnd(1,L,N,2);
X=point(:,1);
Y=point(:,2);

%run K-means
R=2/sqrt(la);    % radius of each cluster
%k=floor(L^2/(pi*R^2));  % number of clusters
k=4;

[idx,C]=kmeans(point,k);
nc=size(C,1);    % number of centers
    
%show
set(gca,'FontSize',40);
c_type=['ro';'gx';'b+';'m*']
%{
subplot(1,2,1)
title('K-means clustering')
for i=1:nc
    clr=rand(1,3);
    plot(X(idx==i),Y(idx==i),'.','color',clr,'Markersize',20);
    hold on
    plot(C(i,1),C(i,2),'x','color',clr,'Markersize',40);
    hold on 
end
%saveas(gcf,'1.jpeg')
hold off
%}

%run customized k-means
subplot(2,2,1);
p=randperm(N,k);
[idx,C]=ckmeans(point,k,p);

title('customized K-means clustering')

for i=1:k
    clr=rand(1,3);
    %plot(X(idx==i),Y(idx==i),'.','color',clr,'Markersize',20);
    plot(X(idx==i),Y(idx==i),c_type(i,:),'Markersize',10);
    hold on
    %plot(C(i,1),C(i,2),'x','color',clr,'Markersize',40,'LineWidth',5)
    plot(C(i,1),C(i,2),c_type(i,:),'Markersize',20,'LineWidth',5)
    hold on 
end
%saveas(gcf,'2.jpeg')
hold off

%run customized k-means
subplot(2,2,2);
p=randperm(N,k);
[idx,C]=ckmeans(point,k,p);

title('customized K-means clustering')

for i=1:k
    clr=rand(1,3);
    %plot(X(idx==i),Y(idx==i),'.','color',clr,'Markersize',20);
    plot(X(idx==i),Y(idx==i),c_type(i,:),'Markersize',10);
    hold on
    %plot(C(i,1),C(i,2),'x','color',clr,'Markersize',40,'LineWidth',5)
    plot(C(i,1),C(i,2),c_type(i,:),'Markersize',20,'LineWidth',5)
    hold on 
end
%saveas(gcf,'2.jpeg')
hold off

%run customized k-means
subplot(2,2,3);
p=randperm(N,k);
[idx,C]=ckmeans(point,k,p);

title('customized K-means clustering')

for i=1:k
    clr=rand(1,3);
    %plot(X(idx==i),Y(idx==i),'.','color',clr,'Markersize',20);
    plot(X(idx==i),Y(idx==i),c_type(i,:),'Markersize',10);
    hold on
    %plot(C(i,1),C(i,2),'x','color',clr,'Markersize',40,'LineWidth',5)
    plot(C(i,1),C(i,2),c_type(i,:),'Markersize',20,'LineWidth',5)
    hold on 
end
%saveas(gcf,'2.jpeg')
hold off

%run customized k-means
subplot(2,2,4);
p=randperm(N,k);
[idx,C]=ckmeans(point,k,p);

title('customized K-means clustering')

for i=1:k
    clr=rand(1,3);
    %plot(X(idx==i),Y(idx==i),'.','color',clr,'Markersize',20);
    plot(X(idx==i),Y(idx==i),c_type(i,:),'Markersize',10);
    hold on
    %plot(C(i,1),C(i,2),'x','color',clr,'Markersize',40,'LineWidth',5)
    plot(C(i,1),C(i,2),c_type(i,:),'Markersize',20,'LineWidth',5)
    hold on 
end
%saveas(gcf,'2.jpeg')
hold off