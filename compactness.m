function p=compactness(X,Means,res,k)
% Compactness(CP) measures the average distance between every pair of data
% points in a cluster. If there are multiple clusters, Compactness is the
% average of all clusters.
% A low value of CP indicates better and more compact clusters.

p=zeros(size(Means,1),1);
for i=1:k
    temp=X(res==i,:);
    temp=pdist2(temp,Means(i,:),'cityblock');
    p(i,1)=sum(temp)/size(temp,1);
end
    