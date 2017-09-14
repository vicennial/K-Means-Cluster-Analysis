function ans=DV_Index(X,Means,res,k)
mini=Inf
maxi=0;
for i=1:k-1
    for j=i+1:k
        m=X(res==i,:);
        n=X(res==j,:);
        temp=pdist2(temp,Means(i,:),'cityblock');
        mini=min(mini,min(min(temp)));
    end
    m=X(res==i,:);
    temp=pdist2(m,m,'cityblock');
    maxi=max(maxi,max(max(temp)));
end
ans=mini/maxi;
        