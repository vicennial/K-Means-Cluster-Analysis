function p=compactness(X,Means,res,k)
p=zeros(size(Means,1),1);
for i=1:k
    temp=X(res==i,:);
    temp=pdist2(temp,Means(i,:),'cityblock');
    p(i,1)=sum(temp)/size(temp,1);
end
    