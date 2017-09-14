function ans=separation(X,Means,res,k)
% Separation(SP) quantifies the degree of separation between individual
% clusters.
%SP close to 0 is an indication of closer clusters.

p=zeros((k*(k-1))/2,1);
ct=0;
for i=1:k-1
    for j=i+1:k
        ct=ct+1;
        temp=Means(i,1)-Means(j,1);
        p(ct,1)=norm(temp);
    end
end
ans=(2*sum(p))/(k*(k-1));