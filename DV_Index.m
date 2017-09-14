function ans=DV_Index(X,Means,res,k)
% Dunn Validity Index (DVI)
%The DVI index quantifies not only the degree of compactness of clusters
%but also the degree of separation between individual clusters.
%DVI measures intercluster distances(separation) over intracluster distances (compactness).

%A larger DVI value indicates compact and well-separated clusters.
mini=Inf;
maxi=0;
for i=1:k-1
    for j=i+1:k
        m=X(res==i,:);
        n=X(res==j,:);
        temp=pdist2(m,n,'cityblock');
        mini=min(mini,min(min(temp)));
    end
    m=X(res==i,:);
    temp=pdist2(m,m,'cityblock');
    maxi=max(maxi,max(max(temp)));
end
ans=mini/maxi;
        