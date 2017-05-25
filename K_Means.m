function [res,New_Means]=K_Means(X,Means,k)
[n m]=size(X);
res=zeros(n,1);
New_Means=Means;
% Assigning each point to closest Mean point
for i=1:n 
    temp=ones(k,2);
    temp(1:end,1)=X(i,1);
    temp(1:end,2)=X(i,2);
    temp=Means-temp; temp=temp.^2; temp=sum(temp,2); temp=sqrt(temp);
    [t res(i,1)]=min(temp);
end
% Recalculating Means
for i=1:k
    f=find(res==i)';
    if isempty(f) %If cluster is empty, Assign a random point.
        New_Means(i,:)=GenRandom(X,1);
        continue
    end
    siz=length(f);
    New_Means(i,:)=[sum(X(f,1))/siz sum(X(f,2))/siz];
end
end